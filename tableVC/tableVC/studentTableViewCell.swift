//
//  studentTableViewCell.swift
//  tableVC
//
//  Created by Rishi Ranjan Kesarwani on 09/10/15.
//  Copyright © 2015 Rishi Ranjan Kesarwani. All rights reserved.
//

import UIKit

class studentTableViewCell: UITableViewCell {
    
    @IBOutlet weak var studentImage: UIImageView!
    
    @IBOutlet weak var studentName: UITextField!

    @IBOutlet weak var studentNumber: UITextField!
    
    @IBAction func studentCheck(sender: AnyObject) {
    }
}
