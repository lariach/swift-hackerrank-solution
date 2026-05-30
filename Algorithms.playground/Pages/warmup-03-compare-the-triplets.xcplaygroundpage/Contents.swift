import Foundation

/*
 * Complete the 'compareTriplets' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts following parameters:
 *  1. INTEGER_ARRAY a
 *  2. INTEGER_ARRAY b
 */

func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var totalA = 0
    var totalB = 0
        
    for i in 0..<a.count{
        if a[i] > b[i] {
            totalA += 1
        } else if a[i] < b[i] {
            totalB += 1
        }
    }
        
    return [totalA, totalB]
}

print("--- RUNNING TEST CASES ---")

// Test Case 1
let arrayA = [5, 6, 7]
let arrayB = [3, 6, 10]
let expectedOutput1 = [1, 1]
let actualOutput1 = compareTriplets(a: arrayA, b: arrayB)

print("Test 1: \(actualOutput1 == expectedOutput1 ? "✅ PASSED" : "❌ FAILED") (Got: \(actualOutput1), Expected: \(expectedOutput1))")


// Test Case 2
let arrayC = [17, 28, 30]
let arrayD = [99, 16, 8]
let expectedOutput2 = [2, 1]
let actualOutput2 = compareTriplets(a: arrayC, b: arrayD)


print("Test 2: \(actualOutput2 == expectedOutput2 ? "✅ PASSED" : "❌ FAILED") (Got: \(actualOutput2), Expected: \(expectedOutput2))")
