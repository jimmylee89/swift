//
//  main.swift
//  EnumDemo
//
//  Created by 李嘉敏 on 15/6/20.
//  Copyright (c) 2015年 jimmylee. All rights reserved.
//

import Foundation

enum Direction:Int{
    case North = 1, Sorth, East, West
}

var v1 = Direction.Sorth


func test(){
    switch v1{
    case Direction.North:
        var v2 = Direction.North.rawValue
        println("in North,\(v2)")
    case .Sorth:
        var v2 = Direction.Sorth.rawValue
        println("in Sorth,\(v2)")
    default:
        println("other")
        
    }
}

var source = Direction(rawValue: 2)

println(source)

