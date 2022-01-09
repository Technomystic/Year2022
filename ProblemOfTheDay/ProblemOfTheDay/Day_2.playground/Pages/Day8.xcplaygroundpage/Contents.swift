//: [Previous](@previous)

import Foundation

//https://leetcode.com/problems/cherry-pickup-ii/

class Solution {

    func cherryPickup(_ grid: [[Int]]) -> Int {
        var dict = [[Int]: Int]()
        let rows = grid.endIndex, cols = grid[0].endIndex
        func dfs(_ row: Int, _ col1: Int, _ col2: Int) -> Int {
            if dict[[row,col1,col2]] != nil {return dict[[row,col1,col2]]!}
            guard col1>=0, col1<cols, col2>=0, col2<cols else {return -1}
            var res = grid[row][col1]
            if col1 != col2 {
                res += grid[row][col2]
            }
            var curr = 0
            if row < rows-1 {
                for newCol1 in col1-1...col1+1 {
                    for newCol2 in col2-1...col2+1 {
                        curr = max(curr, dfs(row+1, newCol1, newCol2))
                    }
                }
                res += curr
            }
            dict[[row, col1, col2]] = res
            return res

        }
        return dfs(0,0,cols-1)
    }
}

//: [Next](@next)
