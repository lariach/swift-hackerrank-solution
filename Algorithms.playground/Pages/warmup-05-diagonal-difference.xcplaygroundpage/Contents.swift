import Foundation

/*
 * Complete the 'diagonalDifference' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts 2D_INTEGER_ARRAY arr as parameter.
 */

func diagonalDifference(arr: [[Int]]) -> Int {
    // Write your code here
    var diagonalA: [Int] = []
    var diagonalB: [Int] = []
    
    for i in 0..<arr.count {
        let column = (arr[i].count - 1) - i
        
        diagonalA.append(arr[i][i])
        diagonalB.append(arr[i][column])
    }

    return abs(diagonalA.reduce(0, +) - diagonalB.reduce(0, +))
}

print("--- RUNNING TEST CASES ---")

// Test Case 1
let array1 = [[11, 2, 4],
              [4, 5, 6],
              [10, 8, -12]]
let expectedOutput1 = 15

let actualOutput1 = diagonalDifference(arr: array1)

print("Test 1: \(actualOutput1 == expectedOutput1 ? "✅ PASSED" : "❌ FAILED") (Got: \(actualOutput1), Expected: \(expectedOutput1))")
