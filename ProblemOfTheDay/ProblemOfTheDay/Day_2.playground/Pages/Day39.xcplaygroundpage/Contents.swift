//: [Previous](@previous)

import Foundation


// 258. Add Digits
// Given an integer num, repeatedly add all its digits until the result has only one digit, and return it.
// Repeatedly add all digits until the result has only one digit.
// - Parameter num: A non-negative integer.
// - Returns: Sum of all digits until the result has only one digit.
// Example 1:
// Input: num = 38
// Output: 2
// Explanation: The process is
// 38 --> 3 + 8 --> 11
// 11 --> 1 + 1 --> 2
// Since 2 has only one digit, return it.
// Example 2:
// Input: num = 0
// Output: 0

// Constraints:
// 0 <= num <= 2^31 - 1
// Follow up: Could you do it without any loop/recursion in O(1) runtime?
// - Complexity:
//   - time: O(1), only constant time is used.
//   - space: O(1), only constant space is used.


class Solution1 {
    func addDigits(_ num: Int) -> Int { num == 0 ? 0 : 1 + (num - 1) % 9 }
}


class Solution {
    func addDigits(_ num: Int) -> Int {
        guard num > 0 else { return 0 }
        return recursion(num: num)
    }

    func recursion(num: Int) -> Int {
        let temp: Int = num
        var value: Int = 0
        if temp.digits.count != 1 {
            for digit in temp.digits {
                value += digit
            }
        } else {
            return temp
        }

        return recursion(num: value)
    }
}

extension Int {
    var digits : [Int] {
        var result = [Int]()
        var remaining = abs(self)
        while remaining > 0 {
            result.insert(remaining % 10, at: 0)
            remaining /= 10
        }
        return result
    }
}

let sol = Solution()
print((sol.addDigits(38)))

//: [Next](@next)
