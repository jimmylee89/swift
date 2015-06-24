//
//  main.swift
//  UseProtocal
//
//  Created by 李嘉敏 on 15/5/10.
//  Copyright (c) 2015年 jimmylee. All rights reserved.
//

import Foundation

protocol People{
    func getName()->String
}

class Man:People{
    func getName() -> String {
        return "jimmy"
    }
}

var man = Man()
println("name is \(man.getName())")
