//
//  main.swift
//  StructureDemo
//
//  Created by 李嘉敏 on 15/6/20.
//  Copyright (c) 2015年 jimmylee. All rights reserved.
//

import Foundation

struct StructEntity {
    var x: Int
    var y: Int
    
    init(x: Int, y: Int){
        self.x = x
        self.y = y
    }
    
    init(_ x: Int, _ y: Int){
        self.x = x
        self.y = y
    }
    
    
    var name:String{
        get{
            return "jimmy"
        }
        set(name){
          
        }
    }
}


var v1 = StructEntity(x: 100,y: 200)

v1.name = "hehe"

println("\(v1.x),\(v1.y), \(v1.name)")


