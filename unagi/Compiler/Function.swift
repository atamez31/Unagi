//
//  Function.swift
//  unagi
//
//  Created by Alex Elizondo  on 10/23/19.
//  Copyright © 2019 Andrés Tamez. All rights reserved.
//

import Foundation

class Function {
	var type: Type
	var address: Int
	var variable: Set<Var>()
	var params: [Var]

	init(type: Type, params: [Var]) {
		self.type = type
		self.params = copyParams(params)
	}

	private func copyParams(params: [Var]) -> [Var] {
	// TODO: Create new instances of params so it's passed by value.
	}
}
