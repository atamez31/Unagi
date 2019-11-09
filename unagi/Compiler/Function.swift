//
//  Function.swift
//  unagi
//
//  Created by Alex Elizondo  on 10/23/19.
//  Copyright © 2019 Andrés Tamez. All rights reserved.
//

import Foundation

class Function {
  private let type: Type
  private var address: Int
  private var variables: [String: Var]
  private var size: Int
  
  private var numStart = 0
  private var decimalStart = 2000
  private var boolStart = 4000
  private var charStart = 6000
  private var phraseStart = 8000

  init(type: Type, params: [String: Var]) {
    self.type = type
    // TODO: Change default adress
    self.address = -1
    self.variables = params
    self.size = -1
  }

  func getVariable(name: String) -> Var? {
    return variables[name]
  }

  func setSize(size: Int) {
    self.size = size
  }

  static private func copyParams(parameters: [Var]) -> [String: Var] {
  // TODO: Create new instances of params so it's passed by value.
    return [:]
  }
    
  func addVariable(name: String, type: Type, address: Int) {
    if variables[name] == nil {
        // TODO: Throw error for existing variable.
    }
    self.variables[name] = Var.init(name: name, type: type, memory_address: address)
  }
}
