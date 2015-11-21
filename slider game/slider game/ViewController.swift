//
//  ViewController.swift
//  slider game
//
//  Created by Rishi Ranjan Kesarwani on 25/09/15.
//  Copyright © 2015 Rishi Ranjan Kesarwani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var score: UITextField!
    @IBOutlet weak var random: UITextField!
    @IBOutlet weak var compliment: UITextField!
    @IBOutlet weak var slide: UISlider!
    @IBOutlet weak var sliderValue: UITextField!
    var a: Int = 0
    var comp: String? = nil
    var c = [["You are just the PERFECT.","You are the BEST in here.","You put up an EXCELLENT show.","✌️Great! "],["You put up a good EFFORT.","You were just NEAR to perfection.","Hope you hit the BullsEye NEXT Time.","😎Nice! "],["You need to put in MORE effort.","You need to CONCENTRATE more.","Pay more attention.","👍OK! "],["Better LUCK next time.","REPEAT till you win.","You are OUT of the scene.","😖Loser! "]]
    @IBAction func play(sender: UIButton) {
        var s: Int = 0
        let b = Int(slide.value)
        if sender.currentTitle == "Start" || sender.currentTitle == "Play" {
            score.text = "Score: "
            comp = nil
            compliment.text = comp
            sliderValue.text = comp
            slide.value = 50
            a = generateRandom()
            sender.setTitle("Hit", forState: .Normal)
            sender.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 0.0, alpha: 0.8)
            sender.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        }
        else if sender.currentTitle == "Hit" {
            let x = Int(arc4random_uniform(3))
            if b == a {
                s = 100
                comp = c[0][3] + c[0][x]
            }
            else if (b <= (a+10)) && (b >= (a-10)) {
                s = 80
                comp = c[1][3] + c[1][x]
            }
            else if (b <= (a+25)) && (b >= (a-25)) {
                s = 30
                comp = c[2][3] + c[2][x]
            }
            else {
                s = 0
                comp = c[3][3] + c[3][x]
            }
            score.text = "Score: \(s)"
            compliment.text = comp
            sliderValue.text = "Your slider value is \(b)"
            sender.setTitle("Play", forState: .Normal)
            sender.backgroundColor = UIColor.grayColor()
            sender.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        }
    }
    func generateRandom() -> Int {
        let a = Int(arc4random_uniform(100))
        random.text = "Set your slider to \(a)"
        return a
    }
}