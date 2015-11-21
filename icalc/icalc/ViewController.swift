//
//  ViewController.swift
//  icalc
//
//  Created by Rishi Ranjan Kesarwani on 19/09/15.
//  Copyright © 2015 Rishi Ranjan Kesarwani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var textField: UITextField!
    var enteringNumber = false
    var fn = 0.0
    var op : String?
    var e = 0 , d = 0
    var sn = 0.0
    var result = 0.0
    @IBAction func digit(sender: UIButton) {
        if(enteringNumber) {
            textField.text = textField.text! + sender.currentTitle!
        } else if sender.currentTitle! == "."{
            textField.text = "0" + sender.currentTitle!
            d = 1
        } else {
            textField.text = sender.currentTitle!
        }
        enteringNumber = true
    }
    @IBAction func operation(sender: UIButton) {
        enteringNumber = false
        let value = NSNumberFormatter().numberFromString(textField.text!)?.doubleValue
        if value != nil {
            fn=value!
        }
        else{
            fn = 0.0
        }
        op = sender.currentTitle
        d = 0
    }
    @IBAction func equal(sender: UIButton) {
        if op != nil {
            if e == 0 {
                sn = NSNumberFormatter().numberFromString(textField.text!)!.doubleValue
            } else {
                fn = result
            }
            if op == "+" {
                result = fn + sn
            } else if op == "-" {
                result = fn - sn
            } else if op == "x" {
                result = fn * sn
            } else {
                result = fn / sn
            }
            textField.text = "\(result)"
            e++
        }
    }
    @IBAction func anotherOperation(sender: UIButton) {
        var a : Double
        if let value = NSNumberFormatter().numberFromString(textField.text!)?.doubleValue {
            a = value
        } else {
            a = 0.0
        }
        let aop = sender.currentTitle!
        if aop == "%" {
            a = a/100
            textField.text = "\(a)"
        } else if aop == "+/-" {
            a = a * -1
            textField.text = "\(a)"
        } else if d == 0 && aop == "." {
            textField.text = textField.text! + "."
            d = 1
        }
    }
    @IBAction func ac(sender: UIButton) {
        result = 0.0
        sn = 0
        fn = 0
        e = 0
        d = 0
        op = nil
        enteringNumber = false
        textField.text = "0"
    }
}