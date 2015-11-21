//
//  ViewController.swift
//  table view
//
//  Created by Rishi Ranjan Kesarwani on 27/09/15.
//  Copyright © 2015 Rishi Ranjan Kesarwani. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var number: UITextField!
    @IBOutlet weak var range: UITextField!
    var no = 0
    var rg = 0
    var flag = 0
    @IBOutlet weak var tableView: UITableView!
    @IBAction func submit(sender: UIButton) {
        let n = NSNumberFormatter().numberFromString(number.text!)!.integerValue
        let r = NSNumberFormatter().numberFromString(range.text!)!.integerValue
        no = n
        rg = r
        flag = 1
        self.tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.rowHeight = 100
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if flag == 1 {
            return rg
        } else {
            return 0
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let z = no * (indexPath.row + 1)
        cell.textLabel?.text = "\(no) x \(indexPath.row + 1) = \(z)"
        return cell
    }
    
}

