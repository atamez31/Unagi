//
//  Quadruple.swift
//  unagi
//
//  Created by Andrés Tamez on 10/23/19.
//  Copyright © 2019 Andrés Tamez. All rights reserved.
//

import Foundation

class Quadruple {
    let op: String
    let leftVal: Int
    let rightVal: Int
    let result: Int
    
    init(op: String, leftVal: Int, rightVal: Int, result: Int) {
        self.op = op
        self.leftVal = leftVal
        self.rightVal = rightVal
        self.result = result
    }
}
