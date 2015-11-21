//
//  ViewController.swift
//  calculator
//
//  Created by Rishi Ranjan Kesarwani on 19/09/15.
//  Copyright © 2015 Rishi Ranjan Kesarwani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var enteringNumber=false
    var firstnumber=0.0
    var operation:String?
    var secondNumber=0.0
    @IBOutlet weak var textField: UITextField!
    @IBAction func digitpressed(sender: UIButton) {
        if (enteringNumber){
        textField.text = textField.text! + sender.currentTitle!
        }
        else{
            textField.text = sender.currentTitle!
        }
        enteringNumber=true;
    }

    @IBAction func operatorpressed(sender: UIButton) {
        calculate()
        enteringNumber=false
        let value = NSNumberFormatter().numberFromString(textField.text!)?.doubleValue
        if value != nil {
            firstnumber=value!
        }
        else{
            firstnumber = 0.0
        }
        operation = sender.currentTitle
    }
    @IBAction func calculate() {
        if operation != nil {
            var result:Double
            secondNumber = NSNumberFormatter().numberFromString(textField.text!)!.doubleValue
            if operation == "+" {
                result = firstnumber + secondNumber
            } else if operation == "-" {
                result = firstnumber - secondNumber
            } else if operation == "X" {
                result = firstnumber * secondNumber
            } else {
                result = firstnumber / secondNumber
            }
            textField.text = "\(result)"
            firstnumber = 0.0
            operation = nil
        }
    }
}

