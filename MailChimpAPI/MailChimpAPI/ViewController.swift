//
//  ViewController.swift
//  MailChimpAPI
//
//  Created by Rishi Ranjan Kesarwani on 19/10/15.
//  Copyright © 2015 Rishi Ranjan Kesarwani. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let someVar = Alamofire.request(.GET, "https://us12.api.mailchimp.com/2.0/lists/list", parameters: ["apikey": "204414ff685258920de82c3a3889153f-us12"])
        
        someVar.responseJSON { response in
        
            let json = JSON(data: response.data!)
            print(json["data"][0]["name"])
        }

    }

}

