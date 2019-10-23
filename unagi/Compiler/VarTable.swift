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
		dictFunc["global"] = Function(Type.empty, [])
	}
}
