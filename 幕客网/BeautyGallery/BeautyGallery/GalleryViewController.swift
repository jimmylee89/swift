//
//  GalleryViewController.swift
//  BeautyGallery
//
//  Created by 李嘉敏 on 15/5/28.
//  Copyright (c) 2015年 jimmylee. All rights reserved.
//

import UIKit
import Social

class GalleryViewController: UIViewController {
    
    var imageName:String?

    @IBOutlet weak var iv: UIImageView!
    
   
    @IBAction func shareTap(sender: AnyObject) {
        var controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        
        controller.setInitialText("这是个测试分享")
        controller.addImage(UIImage(named: imageName!))
        controller.addURL(NSURL(string: "http://jimmylee89.github.io"))
        self.presentViewController(controller, animated: true, completion: nil )
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.title = "a"
        if let name = imageName{
            iv.image = UIImage(named:name)
            
            switch name{
                case "img1":
                navigationItem.title = "img1"
                
            case "img3":
                navigationItem.title = "img3"
                
            case "img2":
                navigationItem.title = "img2"
            default:
                navigationItem.title = nil
            }
        }

       
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
