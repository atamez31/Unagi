//
//  OperationsVM.swift
//  unagi
//
//  Created by Andrés Tamez on 11/19/19.
//  Copyright © 2019 Andrés Tamez. All rights reserved.
//

import Foundation

class OperationsVM {

  // **************** Operational Convertors ****************

  let opConvertorDecimal: [String: (Double, Double) -> Double] = ["+": (+),
                                                                 "-": (-),
                                                                 "*": (*),
                                                                 "/": (/)]

  let opConvertorNum: [String: (Int, Int) -> Int] = ["+": (+),
                                                     "-": (-),
                                                     "*": (*),
                                                     "/": (/)]

  let opRelConvertorNum: [String: (Int, Int) -> Bool] = [">": (>),
                                                         "<": (<),
                                                         ">=": (>=),
                                                         "<=": (<=),
                                                         "==": (==),
                                                         "<>": (!=)]

  let opRelConvertorDecimal: [String: (Double, Double) -> Bool] = [">": (>),
                                                                   "<": (<),
                                                                   ">=": (>=),
                                                                   "<=": (<=),
                                                                   "==": (==),
                                                                   "<>": (!=)]

  let opRelConvertorChar: [String: (Character, Character) -> Bool] = [">": (>),
                                                                      "<": (<),
                                                                      ">=": (>=),
                                                                      "<=": (<=),
                                                                      "==": (==),
                                                                      "<>": (!=)]

  let opRelConvertorPhrase: [String: (String, String) -> Bool] = ["==": (==),
                                                                  "<>": (!=)]
  
  let opRelConvertorBool: [String: (Bool, Bool) -> Bool] = ["==": (==),
                                                            "<>": (!=)]


  // **************** Operation Solvers ****************

  func solveArithmeticOpNum(n1: Int, n2: Int, sign: (Int, Int) -> Int) -> Int {
    return sign(n1, n2)
  }

  func solveArithmeticOpDecimal(n1: Double, n2: Double, sign: (Double, Double) -> Double) -> Double {
    return sign(n1, n2)
  }

  func solveRelationalOpNum(n1: Int, n2: Int, sign: (Int, Int) -> Bool) -> Bool {
    return sign(n1, n2)
  }

  func solveRelationalOpDecimal(n1: Double, n2: Double, sign: (Double, Double) -> Bool) -> Bool {
    return sign(n1, n2)
  }

  func solveRelationalOpChar(n1: Character, n2: Character, sign: (Character, Character) -> Bool) -> Bool {
    return sign(n1, n2)
  }

  func solveRelationalOpPhrase(n1: String, n2: String, sign: (String, String) -> Bool) -> Bool {
    return sign(n1, n2)
  }
  
  func solveRelationalOpBool(n1: Bool, n2: Bool, sign: (Bool, Bool) -> Bool) -> Bool {
    return sign(n1, n2)
  }
}
