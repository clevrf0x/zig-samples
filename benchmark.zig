const std = @import("std");

fn isPrime(x: i32) bool {
    // Gaurd rails (Edge cases)
    if (x < 2) {
        return false;
    }
    if (x == 2) {
        return true;
    }

    var i: i32 = 2;
    while (i * i <= x) {
        if (@mod(x, i) == 0) {
            return false;
        }
        i += 1;
    }
    return true;
}

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();

    // Calculate prime numbers until a user given number,
    // and return total number of prime number exists
    //
    // Actually written to test between zig's different release modes
    // (ReleaseFast, ReleaseSafe, ReleaseSmall)
    // Finding was surprising since ReleaseSmall and ReleaseFast has been
    // giving similar running time with ReleaseSafe is 2 seconds slower
    //
    // MAYBE THIS TEST IS A BAD EXAMPLE!!!!
    const x: i32 = 10000000;
    var i: i32 = 1;
    var total_primes: i32 = 0;
    while (i <= x) {
        if (isPrime(i)) {
            total_primes += 1;
        }
        i += 1;
    }
    try stdout.print("Total number of primes between range 1 to {d} is {d}\n", .{ x, total_primes });
}
