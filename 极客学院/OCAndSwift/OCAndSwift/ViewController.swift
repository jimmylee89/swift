//
//  ViewController.swift
//  OCAndSwift
//
//  Created by 李嘉敏 on 15/5/10.
//  Copyright (c) 2015年 jimmylee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var iv: UIImageView!
    @IBOutlet weak var btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var oc = Hello()
        oc.sayHello()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

