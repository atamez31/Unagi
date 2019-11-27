//
//  Types.swift
//  unagi
//
//  Created by Alex Elizondo  on 10/15/19.
//  Copyright © 2019 Andrés Tamez. All rights reserved.
//

import Foundation

enum Type: Int {
    case none = -1
    case num = 1
    case decimal = 2
    case bool = 3
    case char = 4
    case phrase = 5
    case empty = 6
    case list = 7
    
    init(type : String){
        switch type {
        case "num":
            self = .num
        case "decimal":
            self = .decimal
        case "bool":
            self = .bool
        case "char":
            self = .char
        case "phrase":
            self = .phrase
        case "empty":
            self = .empty
        case "list":
            self = .list
        default:
            self = .none
        }
    }
}
