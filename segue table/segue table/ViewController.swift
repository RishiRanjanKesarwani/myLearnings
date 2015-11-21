//
//  ViewController.swift
//  segue table
//
//  Created by Rishi Ranjan Kesarwani on 27/09/15.
//  Copyright © 2015 Rishi Ranjan Kesarwani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var range: UITextField!
    @IBOutlet weak var number: UITextField!
    var n: Int = 0 , r: Int = 0
    
    @IBAction func submit(sender: UIButton) {
        n = NSNumberFormatter().numberFromString(number.text!)!.integerValue
        r = NSNumberFormatter().numberFromString(range.text!)!.integerValue
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let vc = segue.destinationViewController as! ViewController2
        vc.rg = NSNumberFormatter().numberFromString(range.text!)!.integerValue
        vc.no = NSNumberFormatter().numberFromString(number.text!)!.integerValue
        
    }

}

