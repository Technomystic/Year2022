//: [Previous](@previous)

import Foundation


// Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {

        var currentL1: ListNode? = l1
        var currentL2: ListNode? = l2

        var sumList: ListNode? = ListNode(-1)

        var head: ListNode? = sumList

        var carry: Int = 0

        while currentL1 != nil || currentL2 != nil {

            var value1: Int = 0
            var value2: Int = 0

            if let l1 = currentL1 {
                value1 = l1.val
            }

            if let l2 = currentL2 {
                value2 = l2.val
            }

            let sum: Int = value1 + value2 + carry

            let value = sum % 10

            carry = sum / 10

            // Add node
            sumList?.next = ListNode(value)

            sumList = sumList?.next

            currentL1 = currentL1?.next
            currentL2 = currentL2?.next

        }

        if carry > 0 {
            sumList?.next = ListNode(carry)
        }

        return head?.next

    }
}
//: [Next](@next)
