import Foundation

// One-liner solution:
// print(a + b)

// Wrapped in a function so it can pass the test cases:
func answer(a: Int, b: Int) -> Int {
    return a + b
}

print("--- RUNNING TEST CASES ---")

// Test Case 1
let inputA = 2
let inputB = 3
let expectedOutput1 = 5

let actualOutput1 = answer(a: inputA, b: inputB)
print("Test 1: \(actualOutput1 == expectedOutput1 ? "✅ PASSED" : "❌ FAILED") (Got: \(actualOutput1), Expected: \(expectedOutput1))")

// Test Case 2
let inputC = 1000
let inputD = 100
let expectedOutput2 = 1100

let actualOutput2 = answer(a: inputC, b: inputD)
print("Test 2: \(actualOutput2 == expectedOutput2 ? "✅ PASSED" : "❌ FAILED") (Got: \(actualOutput2), Expected: \(expectedOutput2))")
