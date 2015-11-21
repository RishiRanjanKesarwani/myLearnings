//
//  ViewController.swift
//  collageCustomView
//
//  Created by Rishi Ranjan Kesarwani on 12/10/15.
//  Copyright © 2015 Rishi Ranjan Kesarwani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cView: CustomView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cView.i1 = UIImage(named: "download")!
        cView.i6 = UIImage(named: "download")!
        cView.i5 = UIImage(named: "download")!
        cView.i4 = UIImage(named: "download")!
        cView.i3 = UIImage(named: "download")!
        cView.i2 = UIImage(named: "download")!
    }
    
}

