//
//  ViewController.swift
//  ToDoList3
//
//  Created by Rishi Ranjan Kesarwani on 26/10/15.
//  Copyright © 2015 Rishi Ranjan Kesarwani. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var taskField: UITextField!
    @IBOutlet weak var dateField: UITextField!
    @IBOutlet weak var timeField: UITextField!
    
    let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
    
    @IBAction func updateDB(sender: UIButton) {
        
        let tList = NSEntityDescription.insertNewObjectForEntityForName("TaskEntity", inManagedObjectContext: self.context) as! TaskEntity
        
        tList.task = taskField.text
        tList.date = dateField.text
        tList.time = timeField.text
    }

}

