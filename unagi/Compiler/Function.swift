//
//  Function.swift
//  unagi
//
//  Created by Alex Elizondo  on 10/23/19.
//  Copyright © 2019 Andrés Tamez. All rights reserved.
//

import Foundation

class Function {
  private let id: Int
  private let quadStart: Int
  private let type: Type
  private var address: Int
  private var variables: [String: Var]
  private var params: [Var]
  private var size: Int
  private var numStart = 0
  private var decimalStart = 2000
  private var boolStart = 4000
  private var charStart = 6000
  private var phraseStart = 8000

  init(type: Type, params: [String: Var], id: Int, quadStart: Int) {
    self.type = type
    // TODO: Change default adress
    self.address = -1
    self.variables = params
    self.params = Array(params.values)
    self.size = 0
    self.id = id
    self.quadStart = quadStart
  }

  func getVariable(name: String) -> Var? {
    return variables[name]
  }

  func getId() -> Int {
    return id
  }

  func getQuadStart() -> Int {
    return quadStart
  }

  func getParams() -> [Var] {
    return params
  }

  func getVarCount() -> Int {
    return self.variables.count
  }

  func getSize() -> Int {
    return self.size
  }

  func getType() -> Type {
    return self.type
  }

  func setSize(size: Int) {
    self.size = size
  }

  static private func copyParams(parameters: [Var]) -> [String: Var] {
  // TODO: Create new instances of params so it's passed by value.
    return [:]
  }

  func addVariable(name: String, type: Type, address: Int, size: Int = 1) {
    if variables[name] == nil {
        // TODO: Throw error for existing variable.
    }
    self.variables[name] = Var.init(name: name, type: type, memory_address: address, size: size)
  }
}
