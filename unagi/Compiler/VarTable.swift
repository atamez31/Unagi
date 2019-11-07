//
//  VarTable.swift
//  unagi
//
//  Created by Alex Elizondo  on 10/23/19.
//  Copyright © 2019 Andrés Tamez. All rights reserved.
//

import Foundation

class VarTable {
  var dictFunc: [String: Function] = [:]

  init() {
    // TODO: Set function size
    dictFunc["global"] = Function(type: Type.empty, params: [], size: 0)
  }

  func getDictFunc(name: String) -> Function? {
    return dictFunc[name]
  }

  func addFunc(name: String, function: Function) {
    dictFunc[name] = function
  }
}
