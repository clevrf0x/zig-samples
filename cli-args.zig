const std = @import("std");

pub fn main() u8 {
    std.debug.print("Total number of cli arguments: {d}\n", .{std.os.argv.len});
    for (0.., std.os.argv) |index, arg| {
        std.debug.print("Arg {d}: {s}\n", .{ index, arg });
    }
    return 0;
}
