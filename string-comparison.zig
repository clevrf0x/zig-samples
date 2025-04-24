const std = @import("std");

pub fn main() u8 {

    // Normal way does not work
    // if ("test" == "test") {
    //     std.debug.print("normal way works\n", .{});
    // }

    // in zig we have to do this to compare strings i guess
    // this way it compares both type and length of the string
    if (std.mem.eql(u8, "test", "test")) {
        std.debug.print("zig way works\n", .{});
    }

    return 0;
}
