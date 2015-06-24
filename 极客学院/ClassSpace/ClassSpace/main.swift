//
//  main.swift
//  ClassSpace
//
//  Created by 李嘉敏 on 15/5/10.
//  Copyright (c) 2015年 jimmylee. All rights reserved.
//

import Foundation

class People{
    class Man{
        
        func sayHello(){
            var a = 2
            a = a+3
            println(a)
            println("hello man")
        }
    }
    
    class Woman{
        func sayHello(){
            println("hello woman")
        }
    }
}

var man = com.jimmy.People.Man()
var woman = com.jimmy.People.Woman()

man.sayHello()
woman.sayHello()


