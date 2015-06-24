//
//  main.swift
//  ProtocolDemo
//
//  Created by 李嘉敏 on 15/6/20.
//  Copyright (c) 2015年 jimmylee. All rights reserved.
//

import Foundation

@objc protocol SortProtocol{
    func compare(v1:Int, v2:Int)-> Bool
    
    
    optional func beginCompare()
}

@objc class classA: SortProtocol{
     func compare(v1:Int, v2:Int)-> Bool{
        return v1 > v2
    }
    func beginCompare(){
        println("bbbb")
    }

}

var a = classA()

var pro = a as SortProtocol


 pro.beginCompare?()

