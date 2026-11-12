# zig-gmp

GNU MP 6.3.0 built with Zig. Everything GMP normally generates at build time
(headers, tables, m4-expanded assembly, source lists) is checked into
`generated/`, so a normal build needs only Zig.

```sh
zig build                                  # static libgmp for the native target
zig build -Dtarget=aarch64-linux-musl      # cross
zig build -Dno-asm=true                    # C only, no assembly
```

Targets: x86_64/aarch64/riscv64/powerpc64le/s390x Linux (gnu and musl),
x86_64/aarch64 macOS, x86_64 Windows (gnu). x86_64 uses GMP's fat binary
(runtime CPU dispatch).

## Other build systems

`generated/manifest.txt` lists the sources, flags and include directories for
every platform. Its header documents the format.

## Regenerating

```sh
zig build gen
```

This runs `gen/gen.sh`, which needs `sh`, `make` and `m4`. It runs GMP's
`configure` for every platform, asks `make` for the object lists and tables,
expands the assembly with `m4`, and replaces `generated/`.

## License

GMP is LGPLv3-or-later / GPLv2-or-later; the generated files are derived from
it and carry the same terms. See `COPYING*`.
