#!/bin/sh
# Regenerates generated/ from the GMP sources. Run from the repository root:
#
#   sh gen/gen.sh <gmp-source-dir> <zig-exe>
#
# Needs sh, make, m4 and zig. Each platform is configured with GMP's own
# configure; make then reports the object lists and builds the tables, so
# nothing here re-implements GMP's build logic.
set -eu

src=$(cd "$1" && pwd -P)
zig=$2
out=generated
work=.zig-cache/gmp-gen
stage=$work/stage

#  name               arch        os      abi  gmp host              zig target             fat  extra cflag
platforms='
linux-x86_64-gnu      x86_64      linux   gnu  x86_64-linux-gnu      x86_64-linux-gnu       yes  -
linux-x86_64-musl     x86_64      linux   musl x86_64-linux-musl     x86_64-linux-musl      yes  -
linux-aarch64-gnu     aarch64     linux   gnu  aarch64-linux-gnu     aarch64-linux-gnu      no   -
linux-aarch64-musl    aarch64     linux   musl aarch64-linux-musl    aarch64-linux-musl     no   -
linux-riscv64-gnu     riscv64     linux   gnu  riscv64-linux-gnu     riscv64-linux-gnu      no   -
linux-riscv64-musl    riscv64     linux   musl riscv64-linux-musl    riscv64-linux-musl     no   -
linux-ppc64le-gnu     powerpc64le linux   gnu  power8-ibm-linux-gnu  powerpc64le-linux-gnu  no   -mabi=ibmlongdouble
linux-ppc64le-musl    powerpc64le linux   musl power8-ibm-linux-musl powerpc64le-linux-musl no   -
linux-s390x-gnu       s390x       linux   gnu  s390x-linux-gnu       s390x-linux-gnu        no   -
linux-s390x-musl      s390x       linux   musl s390x-linux-musl      s390x-linux-musl       no   -
macos-x86_64          x86_64      macos   none x86_64-apple-darwin   x86_64-macos           yes  -
macos-aarch64         aarch64     macos   none applem1-apple-darwin  aarch64-macos          no   -
windows-x86_64        x86_64      windows gnu  x86_64-w64-mingw32    x86_64-windows-gnu     yes  -
'
# ppc64le glibc: keep the IBM long double ABI GMP's power8 baseline expects
# (and glibc < 2.32 supports). musl rejects the flag and needs none.

export LC_ALL=C
unset MAKEFLAGS MFLAGS MAKELEVEL CFLAGS CPPFLAGS LDFLAGS LIBS

die() { echo "gen: $*" >&2; exit 1; }

# Print a make expression evaluated in the Makefile in directory $1.
makevar() {
    printf 'gmp-print: ; @echo %s\n' "$2" |
        make -s --no-print-directory -C "$1" -f Makefile -f - gmp-print
}

# Copy $1 to $2, or check it matches what an earlier platform put there.
same() {
    if [ -e "$2" ]; then
        cmp -s "$1" "$2" || die "$2 differs between platforms"
    else
        mkdir -p "$(dirname "$2")" && cp "$1" "$2"
    fi
}

# Every platform in both variants: name arch os abi host target fat cflag variant.
each() {
    echo "$platforms" | while read -r name arch os abi host target fat cflag; do
        [ -n "$name" ] || continue
        echo "$name $arch $os $abi $host $target $fat $cflag asm"
        echo "$name-c $arch $os $abi $host $target no $cflag c"
    done
}

configure() { # name arch os abi host target fat cflag variant
    b=$work/$1
    rm -rf "$b" && mkdir -p "$b"
    set -- "$@" "--host=$5"
    [ "$7" = yes ] && set -- "$@" --enable-fat
    [ "$9" = c ] && set -- "$@" --disable-assembly
    cc="$zig cc -target $6"
    [ "$8" = - ] || cc="$cc $8"
    if [ "$3" = macos ]; then
        # configure's assembler probes fail with zig cc on Darwin; give it
        # the answers.
        export gmp_cv_asm_text=.text gmp_cv_asm_data=.data \
            gmp_cv_asm_globl=.globl gmp_cv_asm_globl_attr= \
            gmp_cv_asm_underscore=yes gmp_cv_asm_rodata='.section __TEXT,__const' \
            gmp_cv_asm_type= gmp_cv_asm_size= gmp_cv_asm_lsym_prefix=L \
            gmp_cv_asm_w32=.long gmp_cv_asm_align_log=yes \
            gmp_cv_asm_align_fill_0x90=no gmp_cv_asm_byte=.byte \
            gmp_cv_asm_label_suffix=:
    fi
    shift 9
    (cd "$b" && CC_FOR_BUILD="$zig cc" "$src/configure" \
        --disable-shared --enable-static "$@" CC="$cc")
    make -s -C "$b" $(makevar "$b" '$(BUILT_SOURCES)')
}

extract() { # name arch os abi host target fat cflag variant
    name=$1 arch=$2 os=$3 abi=$4 target=$6 cflag=$8 variant=$9
    b=$work/$name p=$stage/$name units=$work/$name.units
    asm=$stage/asm/$os-$arch/mpn
    mkdir -p "$p"
    : >"$units"

    # Headers, with this machine's paths and compiler stripped.
    for h in gmp.h config.h gmp-mparam.h fat.h; do
        [ -e "$b/$h" ] || continue
        sed -e 's|^#define __GMP_CC .*|#define __GMP_CC "cc"|' \
            -e 's|^#define __GMP_CFLAGS .*|#define __GMP_CFLAGS ""|' \
            -e "s|\"$src/|\"./|" "$b/$h" >"$p/$h"
    done

    # Limb-size tables. Every target has 64-bit limbs, so these must agree.
    tables=$(makevar "$b" '$(BUILT_SOURCES)')
    for t in $tables; do
        [ "$t" = gmp.h ] || same "$b/$t" "$stage/common/${t##*/}"
    done

    # Everything outside mpn. Must be the same list everywhere.
    objects=$(makevar "$b" '$(libgmp_la_OBJECTS) $(libgmp_la_LIBADD)')
    echo "$objects" | tr ' ' '\n' | grep -v '^mpn/' |
        sed -n 's/\.lo$/.c/p' | sort -u >"$work/common-c.$name"
    same "$work/common-c.$name" "$work/common-c"

    # mpn: configure links each object to the C or assembly it selected.
    objects=$(makevar "$b/mpn" '$(mpn_objects)')
    [ -n "$objects" ] || die "$name: empty mpn_objects"
    for o in $objects; do
        o=${o%.lo}
        if [ -e "$b/mpn/$o.asm" ]; then
            (cd "$b/mpn" && m4 -DHAVE_CONFIG_H -D__GMP_WITHIN_GMP "-DOPERATION_$o" "$o.asm") >"$work/tmp.s"
            if [ "$os" = linux ]; then
                [ -z "$(tail -c 1 "$work/tmp.s")" ] || echo >>"$work/tmp.s"
                printf '\t.section .note.GNU-stack,"",@progbits\n' >>"$work/tmp.s"
            fi
            same "$work/tmp.s" "$asm/$o.s"
            echo "mpn/$o.s generated-asm" >>"$units"
        elif [ -L "$b/mpn/$o.c" ]; then
            rel=$(readlink "$b/mpn/$o.c")
            rel=${rel#"$src/"}
            if grep -q OPERATION_ "$src/$rel"; then
                # Compiled under several names; give each name its own file.
                printf '/* Generated by zig-gmp'"'"'s `zig build gen`. Do not edit. */\n#define OPERATION_%s 1\n#include "%s"\n' \
                    "$o" "$rel" >"$work/tmp.c"
                same "$work/tmp.c" "$stage/common/wrappers/$o.c"
                echo "wrappers/$o.c shared" >>"$units"
            else
                echo "$rel source" >>"$units"
            fi
        elif [ -e "$b/mpn/$o.c" ]; then
            # Fat-binary wrapper written by configure.
            mkdir -p "$p/mpn"
            sed "s|#include \"$src/|#include \"|" "$b/mpn/$o.c" >"$p/mpn/$o.c"
            echo "mpn/$o.c generated-c" >>"$units"
        else
            die "$name: no source for mpn object $o"
        fi
    done

    # The C-only variant is the same everywhere, so its sources are listed
    # once at the top of the manifest.
    if [ "$variant" = c ]; then
        grep -v ' generated-c$' "$units" | sort >"$work/fallback.$name"
        same "$work/fallback.$name" "$work/fallback"
        grep ' generated-c$' "$units" >"$units.tmp" || :
        mv "$units.tmp" "$units"
    fi

    {
        echo "platform $arch $os $abi $variant $out/$name"
        echo "triple $target"
        [ "$variant" = c ] || echo "assembly-dir $out/asm/$os-$arch"
        [ "$cflag" = - ] || echo "cflag $cflag"
        sort -u "$units" | awk '{ print $2, $1 }'
        echo
    } >>"$work/platforms"
}

rm -rf "$work" && mkdir -p "$stage"

echo "gen: configuring $(each | wc -l | tr -d ' ') platforms in parallel"
each | {
    pids=
    while read -r line; do
        name=${line%% *}
        (configure $line) >"$work/$name.log" 2>&1 &
        pids="$pids $!:$name"
    done
    for p in $pids; do
        log=$work/${p#*:}.log
        wait "${p%%:*}" || { tail -n 40 "$log"; die "${p#*:} failed, see $log"; }
    done
}

each | while read -r line; do
    echo "gen: extracting ${line%% *}"
    extract $line
done

url=$(sed -n 's/.*\.url = "\(.*\)".*/\1/p' build.zig.zon)
hash=$(sed -n 's/.*\.hash = "\(.*\)".*/\1/p' build.zig.zon)
{
    cat gen/manifest-header.txt
    echo "version 1"
    echo "upstream $url $hash"
    echo "cflags -DHAVE_CONFIG_H -D__GMP_WITHIN_GMP"
    echo "include platform ."
    echo "include shared ."
    echo "include source ."
    echo "include source mpn"
    echo "shared-dir $out/common"
    echo
    sed 's/^/common-c /' "$work/common-c"
    (cd "$stage/common" && ls *.c) | sed 's/^/common-generated /'
    awk '$2 == "source" { print "fallback-c", $1 }' "$work/fallback"
    awk '$2 == "shared" { print "fallback-shared", $1 }' "$work/fallback"
    echo
    cat "$work/platforms"
} >"$stage/manifest.txt"

rm -rf "$out" && mv "$stage" "$out"
echo "gen: wrote $out"
