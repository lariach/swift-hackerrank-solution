import Foundation

/*
 * Complete the 'aVeryBigSum' function below.
 *
 * The function is expected to return a LONG_INTEGER.
 * The function accepts LONG_INTEGER_ARRAY ar as parameter.
 */

/// Imperative approach (Using for-in loop):
func aVeryBigSum(ar: [Int]) -> Int {
    var total = 0
    for angka in ar {
        total += angka
    }
    return total
}

/// Alternative approach using Swift's built-in higher-order function (.reduce):
// func aVeryBigSum(ar: [Int]) -> Int {
//     return ar.reduce(0, +)
// }

print("--- RUNNING TEST CASES ---")

// Test Case 1
let input1 = [1000000001, 1000000002, 1000000003, 1000000004, 1000000005]
let expectedOutput1 = 5000000015

let actualOutput1 = aVeryBigSum(ar: input1)

print("Test 1: \(actualOutput1 == expectedOutput1 ? "✅ PASSED" : "❌ FAILED") (Got: \(actualOutput1), Expected: \(expectedOutput1))")
