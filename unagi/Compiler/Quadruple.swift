//
//  Quadruple.swift
//  unagi
//
//  Created by Andrés Tamez on 10/23/19.
//  Copyright © 2019 Andrés Tamez. All rights reserved.
//

import Foundation

class Quadruple {
  private let op: String
  private let leftVal: Int
  private let rightVal: Int
  private var result: Int
    
  init(op: String, leftVal: Int, rightVal: Int, result: Int) {
      self.op = op
      self.leftVal = leftVal
      self.rightVal = rightVal
      self.result = result
  }

  func updateResult(result: Int) {
      self.result = result
  }

  func printQuadruple() {
    print(op + " " + String(leftVal) + " " + String(rightVal) + " " + String(result))
  }
}
