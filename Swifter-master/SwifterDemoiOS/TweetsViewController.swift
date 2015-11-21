//
//  TweetsViewController.swift
//  SwifterDemoiOS
//
//  Copyright (c) 2014 Matt Donnelly.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import UIKit
import SwifteriOS
import Alamofire
import SwiftyJSON

class TweetsViewController: UITableViewController {

    var tweets : [JSONValue] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        
    }

    override func viewWillLayoutSubviews()
    {
        super.viewWillLayoutSubviews()
        self.title = "Timeline"
        self.tableView.contentInset = UIEdgeInsetsMake(self.topLayoutGuide.length, 0, 0, 0)
        self.tableView.scrollIndicatorInsets = UIEdgeInsetsMake(self.topLayoutGuide.length, 0, 0, 0)
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tweets.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("TweetTableViewCellIdentifier") as! SentimentsTableViewCell
        
        let tweet = tweets[indexPath.row]
        
        let tweetText = tweets[indexPath.row]["text"].string!
        
        cell.tweet.text = tweetText
        
        let params = ["apikey": "5dbab3b02b6c2692b8dfd16d25d0e3de5b9d2966", "text": tweet["text"].string!, "outputMode": "json", "showSource": "1"]
        
        cell.sentimentView.hidden = true
        cell.activityIndicate.hidden = false
        cell.activityIndicate.startAnimating()
        
        Alamofire.request(.POST, "http://gateway-a.watsonplatform.net/calls/text/TextGetTextSentiment", parameters: params).response { (req, res, data, error) in
            
            var json = JSON(data: data!)
            
            var score: Float = 0.0
            
            if let scoreString = json["docSentiment"]["score"].string {
                if let scoreFloat = NSNumberFormatter().numberFromString(scoreString)?.floatValue {
                    score = scoreFloat
                }
            }
            
            
                cell.sentimentView.hidden = false
                cell.activityIndicate.hidden = true
                cell.activityIndicate.stopAnimating()

            
            if score > 0 {
                cell.sentimentView.backgroundColor = UIColor(red: 0.0, green: CGFloat(score), blue: 0.0, alpha: 1.0)
            } else if score > 0 {
                cell.sentimentView.backgroundColor = UIColor(red: CGFloat(score), green: 0.0, blue: 0.0, alpha: 1.0)
            } else {
                cell.sentimentView.backgroundColor = UIColor.grayColor()
            }
            
            
        }

        
        return cell
    }

}
