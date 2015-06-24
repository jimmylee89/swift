
//
//  Model.swift
//  JsonDemo
//
//  Created by 李嘉敏 on 15/6/21.
//  Copyright (c) 2015年 jimmylee. All rights reserved.
//

import Foundation

class Model: AnyObject{
    var date:String?
    var stories = [Story]()
}

class Story: AnyObject {
    var images = [String]()
    var type = 0
    var title:String = ""
}