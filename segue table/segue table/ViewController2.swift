//
//  ViewController2.swift
//  segue table
//
//  Created by Rishi Ranjan Kesarwani on 27/09/15.
//  Copyright © 2015 Rishi Ranjan Kesarwani. All rights reserved.
//

import UIKit

class ViewController2: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var rg = 0
    var no = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        tableView.reloadData()

    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rg
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "\(no) X \(indexPath.row + 1) = \(no * (indexPath.row + 1))"
        return cell
    }

}
