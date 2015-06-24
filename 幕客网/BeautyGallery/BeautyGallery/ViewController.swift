//
//  ViewController.swift
//  BeautyGallery
//
//  Created by 李嘉敏 on 15/5/26.
//  Copyright (c) 2015年 jimmylee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let names = ["img1","img2","img3"]

    @IBOutlet weak var beautyPicker: UIPickerView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        beautyPicker.dataSource = self
        beautyPicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "goGallery"{
            let selectId = beautyPicker.selectedRowInComponent(0)
            var image:String?
            switch selectId {
            case 0:
                   image = "img1"
            case 1:
                image = "img2"
            case 2:
                image = "img3"
            default:
                image = nil
            }
            
            var vc = segue.destinationViewController as! GalleryViewController
            vc.imageName = image
        }
    }
    
    @IBAction func close2(segue:UIStoryboardSegue){
        println("..")

    }
    
    @IBAction func close(segue:UIStoryboardSegue){
        println("取消")
    }
    
    


}

