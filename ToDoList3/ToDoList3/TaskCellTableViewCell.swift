//
//  TaskCellTableViewCell.swift
//  ToDoList3
//
//  Created by Rishi Ranjan Kesarwani on 26/10/15.
//  Copyright © 2015 Rishi Ranjan Kesarwani. All rights reserved.
//

import UIKit

class TaskCellTableViewCell: UITableViewCell {

    @IBOutlet weak var check: CheckBox!
   
    @IBOutlet weak var tasks: UITextField!
    @IBOutlet weak var times: UITextField!
    @IBOutlet weak var dates: UITextField!
}
