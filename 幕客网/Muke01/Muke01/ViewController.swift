//
//  ViewController.swift
//  Muke01
//
//  Created by 李嘉敏 on 15/5/23.
//  Copyright (c) 2015年 jimmylee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var sex: UISegmentedControl!
    @IBOutlet weak var tf:UITextField!
    @IBOutlet weak var btn:UIButton!
    @IBOutlet weak var iv:UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func showImage(sender: AnyObject){
        tf.resignFirstResponder()
        if let var year = tf.text.toInt() {
            if year % 2 == 0{
                iv.image = UIImage(named:"img1")
            }else{
                iv.image = UIImage(named:"img2")
            }
        }else{
        
        }
    }
    
    override func touchesEnded(touches: Set<NSObject>, withEvent event: UIEvent) {
        tf.resignFirstResponder()

    }
}