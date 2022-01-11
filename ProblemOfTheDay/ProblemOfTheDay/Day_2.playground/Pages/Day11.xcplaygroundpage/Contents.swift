//: [Previous](@previous)

import Foundation

// https://leetcode.com/problems/sum-of-root-to-leaf-binary-numbers
/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {

    func sumRootToLeaf(_ root: TreeNode?) -> Int {
        var sum = 0
        func dfs(_ node: TreeNode?, _ path: Int) {
            guard let node = node else {return}
            if node.left == nil && node.right == nil {
                sum += path << 1 + node.val
                return
            }
            dfs(node.left, path << 1 + node.val)
            dfs(node.right, path << 1 + node.val)
        }
        dfs(root,0)
        return sum
    }

}

//: [Next](@next)
