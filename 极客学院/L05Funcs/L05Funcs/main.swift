//
//  main.swift
//  L05Funcs
//
//  Created by 李嘉敏 on 15/4/22.
//  Copyright (c) 2015年 jimmylee. All rights reserved.
//

import Foundation

func saySomething(hello:String){
    println(hello)
}

//saySomething("yy")

func getValues()->(Int, Int, String,String){
    return (2, 3, "hello", "")

}

var (a,b,c,d) = getValues()

println(c)
