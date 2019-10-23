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

	init(name: String, type: Type) {
		self.name = name
		self.type = type
		// TODO: Initialize memory_address
        self.memory_address = -1
	}
}
