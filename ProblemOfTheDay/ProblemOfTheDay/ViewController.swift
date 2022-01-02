//
//  ViewController.swift
//  ProblemOfTheDay
//
//  Created by Niraj on 01/01/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
        let numberToConvert = 438237764
        let conversion = Conversion(num: NSNumber(value: numberToConvert))
        do {
            let words = try conversion.convertNumToWord()
            print(words)
        } catch ConversionError.invalidNumber {
            print("")
        } catch {
            print("")
        }


    }

}

