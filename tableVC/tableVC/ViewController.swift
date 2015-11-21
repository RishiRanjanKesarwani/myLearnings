//
//  ViewController.swift
//  tableVC
//
//  Created by Rishi Ranjan Kesarwani on 09/10/15.
//  Copyright © 2015 Rishi Ranjan Kesarwani. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var notufy: UILabel!
    @IBOutlet weak var tableView: UITableView!
    var s = 1
    var f = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let r = Int (arc4random_uniform(10))
        if (r % 2) == 0 {
            let cell = tableView.dequeueReusableCellWithIdentifier("faculty_cell") as! facultyTableViewCell
            cell.facultyName.text = "faculty \(f++)"
            cell.imageView?.image = UIImage(named:"download")
            return cell
        } else {
            let cell = tableView.dequeueReusableCellWithIdentifier("student_cell") as! studentTableViewCell
            cell.studentName.text = "student \(s)"
            cell.studentNumber.text = "77 \(s++)"
            cell.imageView?.image = UIImage(named: "download (1)")
            return cell

        }
    }

    
}

