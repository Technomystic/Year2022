//: [Previous](@previous)

import Foundation

// https://leetcode.com/problems/add-binary/

class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        var res = ""
        var pA = a.count - 1, pB = b.count - 1
        var listA = Array(a), listB = Array(b)
        var carry = 0
        while pA >= 0 || pB >= 0 || carry > 0 {
            let valueA = pA >= 0 ? listA[pA].wholeNumberValue! : 0
            let valueB = pB >= 0 ? listB[pB].wholeNumberValue! : 0

            let sum = valueA + valueB + carry
            carry = (sum > 1) ? 1: 0
            let reminder = String(sum % 2)
            res = reminder + res

            pA -= 1
            pB -= 1
        }
        return res
    }
}

//: [Next](@next)
