//
//  ViewController.swift
//  L07HelloIOS
//
//  Created by 李嘉敏 on 15/4/27.
//  Copyright (c) 2015年 jimmylee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var wv:UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wv!.loadRequest(NSURLRequest(URL: NSURL(string:"http://www.baidu.com")!))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }


}

