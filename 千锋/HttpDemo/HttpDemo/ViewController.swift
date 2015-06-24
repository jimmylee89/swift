//
//  ViewController.swift
//  HttpDemo
//
//  Created by 李嘉敏 on 15/6/21.
//  Copyright (c) 2015年 jimmylee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, NSURLConnectionDataDelegate{
    
    lazy var receiveData = NSMutableData()
    
    @IBOutlet weak var iv: UIImageView!
    
    var image:UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println("begin")
        download()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func download(){
        let url = NSURL(string: "http://f.hiphotos.baidu.com/image/pic/item/e1fe9925bc315c60191d32308fb1cb1348547760.jpg")
        let request = NSURLRequest(URL: url!)
        
//        let connection = NSURLConnection(request: request, delegate: self)
      
        // 可以选择在哪个线程工作
        NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.new(), completionHandler: {
            (response: NSURLResponse!,data:NSData!,error:NSError!)-> Void in
            if error == nil && data?.length > 0{
                self.receiveData.appendData(data)
                let data = NSString(data: self.receiveData, encoding: NSUTF8StringEncoding)
                self.image = UIImage(data: self.receiveData)
                
            }
        })
        
        NSThread.sleepForTimeInterval(5)

        self.iv.image = self.image
        
        println("ok")
    }
    
    func connectionDidFinishLoading(connection: NSURLConnection){
//        let data = NSString(data: receiveData, encoding: NSUTF8StringEncoding)
        image = UIImage(data: receiveData)
//         iv.image = image
        println("下载完成")
    }

    func connection(connection: NSURLConnection, didReceiveResponse response: NSURLResponse){
        
        println("获得请求头：")
    }
    
    //会被调用多次
    func connection(connection: NSURLConnection, didReceiveData data: NSData){
        receiveData.appendData(data)
        println("获得数据：")
    }

}

