//
//  CheckBox.swift
//  ToDoList3
//
//  Created by Rishi Ranjan Kesarwani on 26/10/15.
//  Copyright © 2015 Rishi Ranjan Kesarwani. All rights reserved.
//

import UIKit

@IBDesignable class CheckBox: UIView {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBInspectable var image = UIImage(named: "image1") {
        didSet {
            imageView.image = image
        }
    }
    
    @IBAction func tapImage(sender: UITapGestureRecognizer) {
        
        if image == UIImage(named: "image1") {
            
            image = UIImage(named: "image2")
        }
        else {
             image = UIImage(named: "image1")
        }
        
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
        let nib = UINib(nibName: "CheckBox", bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        
        view.frame = self.bounds
        
        self.addSubview(view)
    }

}
