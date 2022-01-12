//: [Previous](@previous)

import Foundation

// https://leetcode.com/problems/insert-into-a-binary-search-tree/

/*
 You are given the root node of a binary search tree (BST) and a value to insert into the tree. Return the root node of the BST after the insertion. It is guaranteed that the new value does not exist in the original BST.

 Notice that there may exist multiple valid ways for the insertion, as long as the tree remains a BST after insertion. You can return any of them.



 Example 1:


 Input: root = [4,2,7,1,3], val = 5
 Output: [4,2,7,1,3,5]
 Explanation: Another accepted tree is:

 Example 2:

 Input: root = [40,20,60,10,30,50,70], val = 25
 Output: [40,20,60,10,30,50,70,null,null,25]
 Example 3:

 Input: root = [4,2,7,1,3,null,null,null,null,null,null], val = 5
 Output: [4,2,7,1,3,5]
 */

func insertIntoBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
    guard let node = root else {return TreeNode(val)}
    if node.val > val {
        node.left = insertIntoBST(node.left,val)
    } else {
        node.right = insertIntoBST(node.right,val)
    }
    return node
}

func insertIntoBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
    guard let node = root else {return TreeNode(val)}
    var curr: TreeNode? = node
    while true {
        if curr!.val > val {
            if curr!.left != nil {
                curr = curr!.left
            } else {
                curr!.left = TreeNode(val)
                break
            }
        } else {
            if curr!.right != nil {
                curr = curr!.right
            } else {
                curr!.right = TreeNode(val)
                break
            }
        }
    }
    return root
}


//: [Next](@next)
