//
//  main.swift
//  L03Loop
//
//  Created by 李嘉敏 on 15/4/20.
//  Copyright (c) 2015年 jimmylee. All rights reserved.
//

import Foundation


var arr = [String]()

for index in 0...100{

    arr.append("item \(index)")
}


for value in arr{
//    println(value)
}

var i = 0

while i < arr.count {
//    println(arr[i])
    i++
}

var dict = ["name":"li", "age":20]
for (key, value) in dict{
    println("\(key), \(value)")
}




//println(arr)

