//
//  ViewController.swift
//  motionDetection
//
//  Created by Rishi Ranjan Kesarwani on 24/10/15.
//  Copyright © 2015 Rishi Ranjan Kesarwani. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {

    let motionManager = CMMotionManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        motionManager.accelerometerUpdateInterval = 0.01
        motionManager.startAccelerometerUpdatesToQueue(NSOperationQueue.mainQueue(), withHandler: { (data, error) -> Void in
            
            print(data!.acceleration.x)
            print(data!.acceleration.y)
            print(data!.acceleration.z) })
        motionManager.stopAccelerometerUpdates()
        
        //similarly for gyro and magneometer
    }


}

