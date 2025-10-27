pub fn binarySearch(comptime T: type, target: T, items: []const T) ?usize {
    if (items.len == 0) return null;
    var left: usize = 0;
    var right: usize = items.len - 1;

    while (left <= right) {
        const mid = (left + right) / 2;
        const value = items[mid];

        if (value == target) {
             return mid; 
        } else if (value < target) {
            left = mid + 1;
        } else {
            if (mid == 0) break; // Prevent underflow
            right = mid - 1;
        }
    }

    return null;
}