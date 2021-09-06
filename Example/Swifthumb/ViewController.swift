//
//  ViewController.swift
//  Swifthumb
//
//  Created by hoonv on 08/23/2021.
//  Copyright (c) 2021 hoonv. All rights reserved.
//

import UIKit
import Swifthumb


class ViewController: UIViewController {
    let bithumb = Swifthumb(apiKey: "", secretKey: "")
    override func viewDidLoad() {
        super.viewDidLoad()
        PublicAPIManager().getAllTicker {
            print($0)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

