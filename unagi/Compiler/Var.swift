//
//  Var.swift
//  unagi
//
//  Created by Alex Elizondo  on 10/23/19.
//  Copyright © 2019 Andrés Tamez. All rights reserved.
//

import Foundation

class Var {
  let name: String
  let type: Type
  let memory_address: Int
  let size: Int
  var listPointerAddress: Int

  init(name: String, type: Type, memory_address: Int, size: Int = 1, listType: Type = Type.none) {
  	self.name = name
  	self.type = type
  	self.memory_address = memory_address
    self.size = size
    self.listPointerAddress = 0
  }

  func setListPointerAddress(listPointerAddress: Int) {
    self.listPointerAddress = listPointerAddress
  }

}
