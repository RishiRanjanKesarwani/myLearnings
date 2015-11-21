//
//  customView.swift
//  collageCustomView
//
//  Created by Rishi Ranjan Kesarwani on 12/10/15.
//  Copyright © 2015 Rishi Ranjan Kesarwani. All rights reserved.
//

import UIKit

@IBDesignable class CustomView: UIView {
    
    @IBInspectable var i1: UIImage = UIImage() {
        didSet {
            image1.image = i1
        }
    }
    
    @IBInspectable var i2: UIImage = UIImage() {
        didSet {
            image2.image = i2
        }
    }
    
    @IBInspectable var i3: UIImage = UIImage() {
        didSet {
            image3.image = i3
        }
    }
    
    @IBInspectable var i4: UIImage = UIImage() {
        didSet {
            image4.image = i4
        }
    }
    
    @IBInspectable var i5: UIImage = UIImage() {
        didSet {
            image5.image = i5
        }
    }
    
    @IBInspectable var i6: UIImage = UIImage() {
        didSet {
            image6.image = i6
        }
    }
    
    @IBOutlet weak var image1: UIImageView!
    
    @IBOutlet weak var image2: UIImageView!

    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    @IBOutlet weak var image5: UIImageView!
    @IBOutlet weak var image6: UIImageView!
    
    @IBAction func change(sender: UIButton) {
        
        i6 = UIImage(named: "download")!
        i5 = UIImage(named: "download")!
        i4 = UIImage(named: "download")!
        i3 = UIImage(named: "download")!
        i2 = UIImage(named: "download")!
        i1 = UIImage(named: "download")!
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        
        self.setup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setup()
    }
    
    func setup() {
        
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: "CustomView", bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        
        view.frame = self.bounds
        
        self.addSubview(view)
        
        
    }
}