//
//  ViewController.swift
//  Browser
//
//  Created by 李嘉敏 on 15/5/18.
//  Copyright (c) 2015年 jimmylee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var btn: UIButton!

    @IBOutlet weak var wv: UIWebView!
    
    override func viewDidLoad() {
        @IBOutlet weak var tfName: UITextField!
        super.viewDidLoad()
        @IBOutlet weak var house: UISwitch!
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func btnClick(){
        println("click")
        wv.loadRequest(NSURLRequest(URL: NSURL(string:input.text)!))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

