//
//  ViewController.swift
//  JsonDemo
//
//  Created by 李嘉敏 on 15/6/21.
//  Copyright (c) 2015年 jimmylee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let url = "http://news-at.zhihu.com/api/3/news/latest"
    lazy var receiveData = NSMutableData()
    var jsonData:NSString?
    
    lazy var model = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        parseMtJson()
        
//        download()
//        
//        NSThread.sleepForTimeInterval(2)
        
//        parseJson()
        
//        println("-------\n")
//         println(self.jsonData)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    //下载json数据
    func download(){
        let url = NSURL(string: self.url)
        let request = NSURLRequest(URL: url!)
        NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.new(), completionHandler: {
                        (response: NSURLResponse!,data:NSData!,error:NSError!)-> Void in
                        if error == nil && data?.length > 0{
                            self.receiveData.appendData(data)
                            self.jsonData = NSString(data: self.receiveData, encoding: NSUTF8StringEncoding)!
//                            println(self.jsonData)
                        }
                    })
    }
    
    //json解析
    func parseJson() {
        var jsonResult: NSDictionary = NSJSONSerialization.JSONObjectWithData(self.receiveData,
            options:NSJSONReadingOptions.MutableContainers,
            error: nil) as! NSDictionary
        let date: String = jsonResult.objectForKey("date") as! String
        let stories: NSArray = jsonResult.objectForKey("stories") as! NSArray
       
        var storyModels = [Story]()
        var storyModel = Story()
        for story in stories{
            let title = story.objectForKey("title") as! String
            let type = story.objectForKey("type") as! Int
            let images = story.objectForKey("images") as! [String]
            storyModel.images = images
            storyModel.title =  title
            storyModel.type = type
            storyModels.append(storyModel)
        }
        
        model.stories = storyModels
        model.date = date
        println("\(model.stories[0].images[0])")
    }
    
    //微镇数据解析
    func parseMtJson() {
        let content = "[\"[\"['1aaa',null, 11]\",\"[null, '1bbb', 11]\"]\",\"[]\",\"['3a','3b', 33]\"]"
        let data = content.dataUsingEncoding(NSUTF8StringEncoding)
        
       var jsonResult =  NSJSONSerialization.JSONObjectWithData( data!, options: NSJSONReadingOptions.MutableContainers, error: nil) as! NSArray
        
        var addPersons = jsonResult[0] as! [[Person]]
        
        var delIds = jsonResult[1]
        
        var updatePerson = jsonResult[2]
        
        println(addPersons)
        println(delIds)
        println(updatePerson)
        
    }
    
    class Person{
        var name: String?
        var desc: String?
        var age: Int = 0
    }

}



