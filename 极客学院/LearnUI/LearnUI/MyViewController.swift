//
//  MyViewController.swift
//  LearnUI
//
//  Created by 李嘉敏 on 15/5/17.
//  Copyright (c) 2015年 jimmylee. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var label = UILabel(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
        label.text = "jimmy"
        
        view.addSubview(label)

        // Do any additional setup after loading the view.
    }
    
    func addView(){

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
