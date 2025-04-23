const std = @import("std");

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    try stdout.print("Hello, World!\n", .{});

    std.log.info("Easier printing on the stderr\n", .{});
    std.debug.print("Easier printf on stderr\n", .{});
}
