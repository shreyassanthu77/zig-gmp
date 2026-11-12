const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});
    const no_asm = b.option(bool, "no-asm", "Build the C-only variant (no assembly)") orelse false;
    const upstream = b.dependency("gmp", .{});

    // Maintainer step: needs sh, make and m4 on top of Zig.
    const gen = b.addSystemCommand(&.{"sh"});
    gen.addFileArg(b.path("gen/gen.sh"));
    gen.addDirectoryArg(upstream.path(""));
    gen.addArg(b.graph.zig_exe);
    gen.setCwd(b.path("."));
    gen.has_side_effects = true;
    b.step("gen", "Regenerate generated/ from the GMP sources").dependOn(&gen.step);

    // Read at build-script runtime so `zig build gen` never invalidates the
    // build script itself.
    const manifest_path = b.root.joinString(b.allocator, "generated/manifest.txt") catch @panic("OOM");
    const text = std.Io.Dir.cwd().readFileAlloc(b.graph.io, manifest_path, b.allocator, .unlimited) catch |err| {
        b.graph.poisonCache();
        fail(b, b.fmt("cannot read generated/manifest.txt ({t}); run `zig build gen`", .{err}));
        return;
    };
    b.dependOnFileContents(b.path("generated/manifest.txt"));

    const variant = if (no_asm) "c" else "asm";
    const m = Manifest.parse(b, text, target.result, variant) catch |err| {
        fail(b, b.fmt("generated/manifest.txt: {t}", .{err}));
        return;
    };
    if (m.generated_dir.len == 0) {
        fail(b, b.fmt("no generated sources for {t}-{t}-{t} ({s})", .{
            target.result.cpu.arch, target.result.os.tag, target.result.abi, variant,
        }));
        return;
    }

    const src = upstream.path("");
    const shared = b.path(m.shared_dir);
    const platform = b.path(m.generated_dir);

    const mod = b.createModule(.{
        .target = target,
        .optimize = optimize,
        .link_libc = true,
        .pic = if (target.result.os.tag == .windows) null else true,
        // GMP is not written for UBSan, and a static library must not drag
        // the UBSan runtime into the consumer's link.
        .sanitize_c = .off,
    });
    m.addIncludes(b, mod, src, shared, platform);
    addFiles(mod, src, m.source.items, m.c_flags.items, .c);
    addFiles(mod, shared, m.shared.items, m.c_flags.items, .c);
    addFiles(mod, platform, m.generated_c.items, m.c_flags.items, .c);
    if (m.assembly_dir.len != 0) addFiles(mod, b.path(m.assembly_dir), m.assembly.items, &.{}, .assembly);

    const lib = b.addLibrary(.{ .name = "gmp", .linkage = .static, .root_module = mod });
    lib.installHeader(platform.path(b, "gmp.h"), "gmp.h");
    b.installArtifact(lib);
}

/// The parts of manifest.txt that apply to one target. See the header of
/// generated/manifest.txt for the format.
const Manifest = struct {
    shared_dir: []const u8 = "",
    generated_dir: []const u8 = "",
    assembly_dir: []const u8 = "",
    /// Global `cflags` followed by the platform's `cflag` records.
    c_flags: List = .empty,
    /// `include` records as root, path pairs.
    includes: std.ArrayList([2][]const u8) = .empty,
    /// Relative to the GMP source tree.
    source: List = .empty,
    /// Relative to `shared_dir`.
    shared: List = .empty,
    /// Relative to `generated_dir`.
    generated_c: List = .empty,
    /// Relative to `assembly_dir`.
    assembly: List = .empty,

    const List = std.ArrayList([]const u8);

    fn parse(b: *std.Build, text: []const u8, target: std.Target, variant: []const u8) !Manifest {
        const gpa = b.allocator;
        var m: Manifest = .{};
        const c_only = std.mem.eql(u8, variant, "c");
        // Whether we are inside the platform block for this target.
        var selected = false;

        var lines = std.mem.splitScalar(u8, text, '\n');
        while (lines.next()) |line| {
            var fields = std.mem.tokenizeScalar(u8, line, ' ');
            const record = fields.next() orelse continue;
            if (record[0] == '#') continue;
            const arg = fields.next() orelse "";

            if (eql(record, "platform")) {
                const os = fields.next() orelse return error.BadPlatform;
                const abis = fields.next() orelse return error.BadPlatform;
                const v = fields.next() orelse return error.BadPlatform;
                const dir = fields.next() orelse return error.BadPlatform;
                selected = eql(arg, @tagName(target.cpu.arch)) and
                    eql(os, @tagName(target.os.tag)) and
                    eql(v, variant) and
                    hasAbi(abis, @tagName(target.abi));
                if (selected) m.generated_dir = dir;
            } else if (eql(record, "cflags")) {
                try m.c_flags.append(gpa, arg);
                while (fields.next()) |flag| try m.c_flags.append(gpa, flag);
            } else if (eql(record, "include")) {
                try m.includes.append(gpa, .{ arg, fields.next() orelse return error.BadInclude });
            } else if (eql(record, "shared-dir")) {
                m.shared_dir = arg;
            } else if (eql(record, "common-c")) {
                try m.source.append(gpa, arg);
            } else if (eql(record, "common-generated")) {
                try m.shared.append(gpa, arg);
            } else if (eql(record, "fallback-c")) {
                if (c_only) try m.source.append(gpa, arg);
            } else if (eql(record, "fallback-shared")) {
                if (c_only) try m.shared.append(gpa, arg);
            } else if (eql(record, "version") or eql(record, "upstream") or eql(record, "triple")) {
                // Informational.
            } else if (!selected) {
                // A record of some other platform.
            } else if (eql(record, "assembly-dir")) {
                m.assembly_dir = arg;
            } else if (eql(record, "cflag")) {
                try m.c_flags.append(gpa, arg);
            } else if (eql(record, "source")) {
                try m.source.append(gpa, arg);
            } else if (eql(record, "shared")) {
                try m.shared.append(gpa, arg);
            } else if (eql(record, "generated-c")) {
                try m.generated_c.append(gpa, arg);
            } else if (eql(record, "generated-asm")) {
                try m.assembly.append(gpa, arg);
            } else {
                return error.UnknownRecord;
            }
        }
        return m;
    }

    fn addIncludes(
        m: Manifest,
        b: *std.Build,
        mod: *std.Build.Module,
        src: std.Build.LazyPath,
        shared: std.Build.LazyPath,
        platform: std.Build.LazyPath,
    ) void {
        for (m.includes.items) |inc| {
            const root = if (eql(inc[0], "source"))
                src
            else if (eql(inc[0], "shared"))
                shared
            else if (eql(inc[0], "platform"))
                platform
            else
                std.debug.panic("generated/manifest.txt: unknown include root {s}", .{inc[0]});
            mod.addIncludePath(root.path(b, inc[1]));
        }
    }
};

fn hasAbi(list: []const u8, abi: []const u8) bool {
    var it = std.mem.splitScalar(u8, list, ',');
    while (it.next()) |candidate| if (eql(candidate, abi)) return true;
    return false;
}

fn eql(a: []const u8, b: []const u8) bool {
    return std.mem.eql(u8, a, b);
}

fn addFiles(
    mod: *std.Build.Module,
    root: std.Build.LazyPath,
    files: []const []const u8,
    flags: []const []const u8,
    language: std.Build.Module.CSourceLanguage,
) void {
    if (files.len == 0) return;
    mod.addCSourceFiles(.{ .root = root, .files = files, .flags = flags, .language = language });
}

fn fail(b: *std.Build, message: []const u8) void {
    b.getInstallStep().dependOn(&b.addFail(message).step);
}
