//
//  todoModel.swift
//  Todo
//
//  Created by 李嘉敏 on 15/6/12.
//  Copyright (c) 2015年 jimmylee. All rights reserved.
//

import Foundation

class TodoModel: NSObject{
    var id: String
    var image:String
    var title:String
    var date:NSDate
    
    init(id:String, image:String, title:String, date:NSDate){
        self.id = id
        self.image = image
        self.title = title
        self.date = date
    }
}