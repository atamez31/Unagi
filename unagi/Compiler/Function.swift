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
    var variables: [String: Var]
	var params: [String: Var]
    let size: Int
    
    private var numStart = 0
    private var decimalStart = 2000
    private var boolStart = 4000
    private var charStart = 6000
    private var phraseStart = 8000

    init(type: Type, params: [Var], size: Int) {
        self.type = type
        // TODO: Change default adress
        self.address = -1
        self.variables = [:]
        self.params = Function.copyParams(parameters: params)
        self.size = size
    }

    static private func copyParams(parameters: [Var]) -> [String: Var] {
	// TODO: Create new instances of params so it's passed by value.
        return [:]
	}
    
    func addVariable(name: String, type: Type) {
        if variables[name] == nil {
            // TODO: Throw error for existing variable.
        }
        let variableAddress: Int
        switch type {
        case Type.num:
            variableAddress = numStart
            numStart = numStart + 1
        case Type.decimal:
            variableAddress = decimalStart
            decimalStart = decimalStart + 1
        case Type.bool:
            variableAddress = boolStart
            boolStart = boolStart + 1
        case Type.char:
            variableAddress = charStart
            charStart = charStart + 1
        case Type.phrase:
            variableAddress = phraseStart
            phraseStart = phraseStart + 1
        case Type.list:
            // TODO: Case for list
            variableAddress = 0
        default:
            // TODO: Throw error
            variableAddress = 0
        }
        self.variables[name] = Var.init(name: name, type: type, memory_address: variableAddress)
    }
}
