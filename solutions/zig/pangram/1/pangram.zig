pub fn isPangram(str: []const u8) bool {
    // A pangram must contain at least 26 letters
    if (str.len < 26) return false;
    // Track seen letters
    var seen: [26]bool = undefined;

    for (str) |c| {
        if (c >= 'a' and c <= 'z') {
            // Mark letter as seen
            seen[c - 'a'] = true;
        } else if (c >= 'A' and c <= 'Z') {
            // Mark letter as seen
            seen[c - 'A'] = true;
        }
    }
    // Check if all letters were seen
    for (seen) |s| {
        if (!s) return false;
    }
    return true;
}