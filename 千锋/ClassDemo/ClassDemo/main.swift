//
//  main.swift
//  ClassDemo
//
//  Created by 李嘉敏 on 15/6/20.
//  Copyright (c) 2015年 jimmylee. All rights reserved.
//

import Foundation

class Person{
    var name:String?
    var age:Int = 0
    
    func getAge() -> Int{
        return age
    }
    
    class func getMaxAge() -> Int {
        return 200
    }
    
    func setDate(name:String, age:Int){
        self.name = name
        self.age = age
    }
    
    deinit{
        
    }
    

}

var xiaoMing = Person()
xiaoMing.age = 10
xiaoMing.name = "xiaoMing"

xiaoMing.setDate("小明", age: 13)

println("\(xiaoMing.name),\(xiaoMing.getAge()), \(Person.getMaxAge())")