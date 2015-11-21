//
//  ViewController.swift
//  animate
//
//  Created by Rishi Ranjan Kesarwani on 24/10/15.
//  Copyright © 2015 Rishi Ranjan Kesarwani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animateView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func changeAnimation(sender: UIButton) {
  /*      UIView.animateWithDuration(1.0) { () -> Void in
            if (self.animateView.backgroundColor == UIColor.blackColor()) {
                self.animateView.backgroundColor = UIColor.grayColor()
                self.animateView.frame.origin.y = 200
            } else {
                self.animateView.backgroundColor = UIColor.blackColor()
                self.animateView.frame.origin.y = 100
            }
        }*/
        
        UIView.animateWithDuration(1.0, delay: 2.0, options: UIViewAnimationOptions.CurveEaseOut, animations: { () -> Void in
            if (self.animateView.backgroundColor == UIColor.blackColor()) {
                self.animateView.backgroundColor = UIColor.grayColor()
                self.animateView.frame.origin.x = 200
            } else {
                self.animateView.backgroundColor = UIColor.blackColor()
                self.animateView.frame.origin.x = 100
            }
            }) { (success) -> Void in
                if success {
                    print("animation completed")
                } else {
                    print("animation incomplete")
                }
        }
    }
}

