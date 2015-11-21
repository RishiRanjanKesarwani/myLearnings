//
//  SentimentsTableViewCell.swift
//  Swifter
//
//  Created by Rishi Ranjan Kesarwani on 31/10/15.
//  Copyright © 2015 Matt Donnelly. All rights reserved.
//

import UIKit

class SentimentsTableViewCell: UITableViewCell {

    @IBOutlet weak var tweet: UILabel!
    
    @IBOutlet weak var activityIndicate: UIActivityIndicatorView!
    
    @IBOutlet weak var sentimentView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
