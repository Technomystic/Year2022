//: [Previous](@previous)

import Foundation
//https://leetcode.com/problems/robot-bounded-in-circle/

/**
 On an infinite plane, a robot initially stands at (0, 0) and faces north. The robot can receive one of three instructions:

 "G": go straight 1 unit;
 "L": turn 90 degrees to the left;
 "R": turn 90 degrees to the right.
 The robot performs the instructions given in order, and repeats them forever.

 Return true if and only if there exists a circle in the plane such that the robot never leaves the circle.
 **/

class Solution {
    func isRobotBounded(_ instructions: String) -> Bool {
        var x = 0, y = 0, dx = 0, dy = 1
        for char in instructions {
            switch char {
                case "R":
                    (dx, dy) = (dy, -dx)
                case "L":
                    (dx, dy) = (-dy, dx)
                case "G":
                    x+=dx
                    y+=dy
                default:
                    break
            }
        }
        return x==0 && y==0 || !(dx == 0 && dy == 1)
    }

}

//: [Next](@next)
