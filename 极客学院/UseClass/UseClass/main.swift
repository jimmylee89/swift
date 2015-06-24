//
//  main.swift
//  UseClass
//
//  Created by 李嘉敏 on 15/5/10.
//  Copyright (c) 2015年 jimmylee. All rights reserved.
//

import Foundation

class Hello{
    var name:String="jm"
    
    init(name:String){
        self.name = name
    }
    
    init(){
        
    }
    
    func sayHello(){
        println("Hello, \(name)")
        
    }
    
    class func sayHi(){
        println("hi")
    }
}

//var hello = Hello(name:"jimmy")
//hello.sayHello()

//Hello.sayHi()

class Hi:Hello{

    
    override func sayHello() {
        println("china")
        super.sayHello()
    }
}

extension Hello{
    func sayHaha(){
        println("haha")
    }
}

//Hi(name:"j").sayHello()
//Hi.sayHi()
Hi().sayHaha()



