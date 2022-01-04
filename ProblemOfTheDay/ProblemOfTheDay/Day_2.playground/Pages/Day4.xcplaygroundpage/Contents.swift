//: [Previous](@previous)

import Foundation

//The complement of an integer is the integer you get when you flip all the 0's to 1's and all the 1's to 0's in its binary representation.

//For example, The integer 5 is "101" in binary and its complement is "010" which is the integer 2.
//Given an integer n, return its complement.

class Solution {
    static func bitwiseComplement(_ n: Int) -> Int {
        let str = String(n, radix: 2)
        let final = str.map({ "\($0.wholeNumberValue! ^ 1)" }).joined(separator: "")
        let binary = Int(final, radix: 2)!
        return binary
    }
}

let ans = Solution.bitwiseComplement(10)
print(ans)
//: [Next](@next)
