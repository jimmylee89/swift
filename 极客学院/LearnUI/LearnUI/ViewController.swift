//
//  ViewController.swift
//  LearnUI
//
//  Created by 李嘉敏 on 15/5/17.
//  Copyright (c) 2015年 jimmylee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var height: UISlider!
    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var input: UITextField!

    @IBOutlet weak var wv: UIWebView!
    
    @IBAction func clickButton(sender:AnyObject){
        @IBOutlet weak var sex: UISegmentedControl!
    
        println("clicked")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

