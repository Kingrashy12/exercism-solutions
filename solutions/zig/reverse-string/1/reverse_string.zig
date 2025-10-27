/// Writes a reversed copy of `s` to `buffer`.
pub fn reverse(buffer: []u8, s: []const u8) []u8 {
    const len = s.len;

    for (s, 0..len) |value, i| {
        buffer[len - 1 - i] = value;
    }

    return buffer[0..len];
}
