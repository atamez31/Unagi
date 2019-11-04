//
//  Function.swift
//  unagi
//
//  Created by Alex Elizondo  on 10/23/19.
//  Copyright © 2019 Andrés Tamez. All rights reserved.
//

import Foundation

class Function {
	let type: Type
	var address: Int
    var variable: [String: Var]
	var params: [String: Var]
    let size: Int

    init(type: Type, params: [Var], size: Int) {
		self.type = type
        // TODO: Change default adress
        self.address = -1
        self.variable = [:]
        self.params = Function.copyParams(parameters: params)
        self.size = size
	}

    static private func copyParams(parameters: [Var]) -> [String: Var] {
	// TODO: Create new instances of params so it's passed by value.
        return [:]
	}
}
