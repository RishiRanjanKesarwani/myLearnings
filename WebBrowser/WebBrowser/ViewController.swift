//
//  ViewController.swift
//  WebBrowser
//
//  Created by Rishi Ranjan Kesarwani on 27/10/15.
//  Copyright © 2015 Rishi Ranjan Kesarwani. All rights reserved.
//

import UIKit
class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var webField: UITextField!
    var webs: [String] = ["https://www.google.co.in/?gfe_rd=cr&ei=KFAzVtLvEenI8AfKw4tQ"]
    var w = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string: webs[w])
        
        let request = NSURLRequest(URL: url!)
        
        webView.loadRequest(request)
    }

    @IBAction func loadWeb(sender: UIButton) {
        if (webField.text) != nil {
            webs.append(webField.text!)
            w++
            print(webs[w])
        }
        if (((sender.currentTitle) == ">") && (webs[w+1] != "")) {
            w++
            webField.text = ""
        }else if (((sender.currentTitle) == "<") && (w > 0)) {
            w--
            webField.text = ""
        }
        print(w)
        let url = NSURL(string: webs[w])
        
        let request = NSURLRequest(URL: url!)
        
        webView.loadRequest(request)
    }
    

}