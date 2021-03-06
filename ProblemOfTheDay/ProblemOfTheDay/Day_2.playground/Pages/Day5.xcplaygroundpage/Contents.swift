//: [Previous](@previous)

import Foundation

// Pallindrome Partitioning
/*
* Question Link: https://leetcode.com/problems/palindrome-partitioning/
* Primary idea: Classic Depth-first Search, use index to track substring,
*               and move forward to deeper level only if the substring is a palindrome
*
* Time Complexity: O(n^n), Space Complexity: O(n)
*/


extension String {
    var isPalindrome: Bool {
        let chars = Array(self)

        var i = 0, j = count - 1

        while i <= j {
            if chars[i] != chars[j] {
                return false
            }
            i += 1
            j -= 1
        }

        return true
    }
}

class Solution {
    static func partition(_ s: String) -> [[String]] {
    var paths = [[String]]()
    var path = [String]()

    self.dfs(&paths, &path, Array(s), 0)

    return paths

    }

    static func dfs(_  paths: inout [[String]], _ path: inout [String], _ s: [Character] , _ index: Int) {
        if index == s.count {
            paths.append(Array(path))
            return
        }

        for i in index..<s.count {
            let current = String(s[index...i])

            if current.isPalindrome {
                path.append(current)
                dfs(&paths, &path, s, i + 1)
                path.removeLast()
            }
        }
    }

}
let s = Solution.partition("aab")
print(s)


//: [Next](@next)
