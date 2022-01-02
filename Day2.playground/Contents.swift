import UIKit

// Kth Smallest Factor

/*
 GIven two positive integers N and K. You have to find the Kth smallest factor of N. A factor of N is a positive integer which divides N. Output the Kth smallest factor of N if it exists otherwise print -1.



 Example 1:

 Input : N = 4 , K = 2
 Output: 2
 Explanation:
 All factors of 4 are 1,2 and 4. Out of
 these 2 is the 2nd smallest.
 Example 2:

 Input : N = 4 , K = 3
 Output: 4
 Explanation:
 All factors of 4 are 1,2 and 4. Out of
 these 4 is the 3rd smallest.


 Your Task:
 You don't need to read input or print anything. Your task is to complete the function kThSmallestFactor() which takes 2 Integers N and K as input and returns the answer.



 Expected Time Complexity: O(sqrt(N))
 Expected Auxiliary Space: O(1)
 */

struct SmallestFactor {

    static func kThSmallestFactor(number: Int, position: Int) -> Int {

        guard number > 0 && position > 0 && position <= number else {
            return -1
        }

        let range = 1...number
        let factor = range.filter({ number % $0 == 0 })
        print("All the factors of \(number) are \(factor)")
        guard position <= factor.count else { return -1 }
        let value = factor[position - 1]
        print(value)

        return value
    }
}

let smallestFactor = SmallestFactor.kThSmallestFactor(number: 42, position: 5)
print("Returned Value \(smallestFactor)")


