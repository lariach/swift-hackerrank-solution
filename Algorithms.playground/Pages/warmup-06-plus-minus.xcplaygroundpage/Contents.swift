import Foundation

/*
 * Complete the 'plusMinus' function below.
 *
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func plusMinus(arr: [Int]) -> [String] {
    var positiveNum = 0
    var negativeNum = 0
    var zeroNum = 0
    
    for num in arr {
        if num > 0 { positiveNum += 1 }
        else if num < 0 { negativeNum += 1 }
        else { zeroNum += 1 }
    }
    
    let totalCount = Double(arr.count)
    
    let posStr = String(format: "%.6f", Double(positiveNum) / totalCount)
    let negStr = String(format: "%.6f", Double(negativeNum) / totalCount)
    let zeroStr = String(format: "%.6f", Double(zeroNum) / totalCount)
    
    return [posStr, negStr, zeroStr]
}

print("--- RUNNING TEST CASES ---")

// Test Case 1
let array1 = [-4, 3, -9, 0, 4, 1]

let expectedOutput1 = ["0.500000", "0.333333", "0.166667"]
let actualOutput1 = plusMinus(arr: array1)

print("Test 1: \(actualOutput1 == expectedOutput1 ? "✅ PASSED" : "❌ FAILED")\n(Got: \(actualOutput1), Expected: \(expectedOutput1))")


// Test Case 2
let array2 = [1, 2, 3, -1, -2, -3, 0, 0]

let expectedOutput2 = ["0.375000", "0.375000", "0.250000"]
let actualOutput2 = plusMinus(arr: array2)

print("Test 2: \(actualOutput2 == expectedOutput2 ? "✅ PASSED" : "❌ FAILED")\n(Got: \(actualOutput2), Expected: \(expectedOutput2))")
