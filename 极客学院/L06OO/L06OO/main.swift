//
//  main.swift
//  L06OO
//
//  Created by 李嘉敏 on 15/4/27.
//  Copyright (c) 2015年 jimmylee. All rights reserved.
//

import Foundation

class Animal{

    func say(){
        println()
    }
}

class Bird:Animal{
    var name:String
    
    init (name:String){
        self.name = name
    }
    
    override func say() {
        println(name)
    }
}

var bird = Bird(name:"l")
bird.say()




