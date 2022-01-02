//
//  Day1.swift
//  ProblemOfTheDay
//
//  Created by Niraj on 01/01/2022.
//

import Foundation

//Write a function to convert a given number into words.
//
//Example 1:
//
//Input:
//N = 438237764
//Output: forty three crore eighty two lakh
//thirty seven thousand seven hundred and
//sixty four
//
//
//Example 2:
//
//Input:
//N = 1000
//Output: one thousand

enum ConversionError: Error {
    case invalidNumber
}

struct Conversion {

    let inputNumber: NSNumber

    init(num: NSNumber) {
        self.inputNumber = num
    }

    func convertNumToWord() throws -> String {
        guard self.inputNumber.intValue > 0 else {
            throw ConversionError.invalidNumber
        }

        let formatter = NumberFormatter()
        formatter.numberStyle = .spellOut
        formatter.locale = Locale(identifier: "en_IN")
        return formatter.string(from: inputNumber)!
    }
}
