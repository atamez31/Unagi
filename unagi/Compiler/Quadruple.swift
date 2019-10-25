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
    let leftVal: String
    let rightVal: String
    let result: String
    
    init(op: String, leftVal: String, rightVal: String, result: String) {
        self.op = op
        self.leftVal = leftVal
        self.rightVal = rightVal
        self.result = result
    }
}
