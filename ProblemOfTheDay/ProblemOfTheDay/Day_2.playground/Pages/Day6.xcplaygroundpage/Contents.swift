//: [Previous](@previous)

import Foundation

class Solution {
    static func carPooling(_ trips: [[Int]], _ capacity: Int) -> Bool {
        var capacity = capacity
        var stops:[Int] = [Int](repeating:0,count:1001)
        for t in trips
        {
            stops[t[1]] += t[0]
            stops[t[2]] -= t[0]
        }
        var i:Int = 0
        while(capacity >= 0 && i < 1001)
        {
            capacity -= stops[i]
            i += 1
        }
        return capacity >= 0
    }
}

let sol = Solution.carPooling([[2, 1, 5], [3, 3, 7]], 4)
print(sol)

//: [Next](@next)
