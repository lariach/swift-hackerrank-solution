import Foundation

/*
 * Complete the 'simpleArraySum' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER_ARRAY ar as parameter.
 */

/// Imperative approach (Using for-in loop):
func simpleArraySum(ar: [Int]) -> Int {
    var total = 0
    for value in ar {
        total += value
    }
    return total
}

/// Alternative approach using Swift's built-in higher-order function (.reduce):
// func simpleArraySum(ar: [Int]) -> Int {
//     return ar.reduce(0, +)
// }

print("--- RUNNING TEST CASES ---")

// Test Case 1
let input1 = [1, 2, 3, 4, 10, 11]
let expectedOutput1 = 31
let actualOutput1 = simpleArraySum(ar: input1)

print("Test 1: \(actualOutput1 == expectedOutput1 ? "✅ PASSED" : "❌ FAILED") (Got: \(actualOutput1), Expected: \(expectedOutput1))")


// Test Case 2 
let input2 = [0, 0, 0]
let expectedOutput2 = 0
let actualOutput2 = simpleArraySum(ar: input2)

print("Test 2: \(actualOutput2 == expectedOutput2 ? "✅ PASSED" : "❌ FAILED") (Got: \(actualOutput2), Expected: \(expectedOutput2))")
