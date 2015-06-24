//
//  main.swift
//  qianfeng_closure
//
//  Created by 李嘉敏 on 15/6/19.
//  Copyright (c) 2015年 jimmylee. All rights reserved.
//

import Foundation

println("Hello, World!")

func testFunc(v1:String, v2:Int)->String{
    return "name\(v1),age:\(v2)"
    
}

func testFunc2(v1:String, age v2:Int)->String{
    return "\(v1), \(v2)"
}

func testFunc3()->(String, Int, String){
    return ("jimmy", 20, "at home")
}

func testFunc4()->Int{
    var a = 1
    func test(){
        a++
    }
    test()

    return a;
}



func funcPointer()->(Int->Int){
    func add(num:Int)->Int{
        return num+1
    }
    
    return add
}

var arr = [10, 20, 30, 21]

func lessTen(num:Int)->Bool{
    if(num < 10){
        return true
    }
    return false
}

func choose(list:[Int], condition:Int->Bool)-> Bool{
    for n in list{
        if(condition(n)){
            return true
        }
    }
    
    return false
    
}

var v = choose(arr, {
    (num:Int)->Bool in
    return num > 20
    
})

func min(v1:Int, v2:Int, condition:(v1:Int, v2:Int)->Bool)->Bool{
    return condition(v1: 1, v2:3)

}

println(min(1,2,{
    return $0 > $1
}))





