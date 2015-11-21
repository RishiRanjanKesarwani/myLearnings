//
//  TaskScreen.swift
//  ToDoList3
//
//  Created by Rishi Ranjan Kesarwani on 26/10/15.
//  Copyright © 2015 Rishi Ranjan Kesarwani. All rights reserved.
//

import UIKit
import CoreData

class TaskScreen: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("TaskCell") as! TaskCellTableViewCell
        
        let request = NSFetchRequest(entityName: "TaskEntity")
        let data = (try! self.context.executeFetchRequest(request)) as! [TaskEntity]

        cell.tasks.text = data[indexPath.row].task
        cell.dates.text = data[indexPath.row].date
        cell.times.text = data[indexPath.row].time
       // cell.check.image = UIImage(named: "image1")
        
        return cell

    }
    
}
