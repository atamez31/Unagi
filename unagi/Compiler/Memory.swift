//
//  Memory.swift
//  unagi
//
//  Created by Alex Elizondo  on 10/31/19.
//  Copyright © 2019 Andrés Tamez. All rights reserved.
//

import Foundation

class Memory {
    private var numStart = 0
    private var decimalStart = 2000
    private var boolStart = 4000
    private var charStart = 6000
    private var phraseStart = 8000
    
    private var numMap = [Int: Int]()
    private var decimalMap = [Int: Double]()
    private var boolMap = [Int: Bool]()
    private var charMap = [Int: Character]()
    private var phraseMap = [Int: String]()
        
    init(realMemorySpace: Int) {
        self.numStart = realMemorySpace
        self.decimalStart += realMemorySpace
        self.boolStart += realMemorySpace
        self.charStart += realMemorySpace
        self.phraseStart += realMemorySpace
    }
    
    // **************** Variable Getters ****************
    
    func getNum(address: Int) -> Int {
        // Return MAXINT if address doesn't exist
        return numMap[address] ?? Int.max
    }
    
    func getDecimal(address: Int) -> Double {
        return decimalMap[address] ?? -1
    }
    
    func getBool(address: Int) -> Bool {
        return boolMap[address] ?? false
    }
    
    func getChar(address: Int) -> Character {
        return charMap[address] ?? "?"
    }
    
    func getPhrase(address: Int) -> String {
        return phraseMap[address] ?? "?"
    }
    
    // **************** Variable Writters ****************
    
    func writeNum(num: Int) -> Int {
        let address = numStart + numMap.count
        numMap[address] = num
        return address
    }
    
    func writeDecimal(decimal: Double) -> Int {
        let address = decimalStart + decimalMap.count
        decimalMap[address] = decimal
        return address
    }
    
    func writeBool(bool: Bool) -> Int {
        let address = boolStart + boolMap.count
        boolMap[address] = bool
        return address
    }
    
    func writeChar(char: Character) -> Int {
        let address = charStart + charMap.count
        charMap[address] = char
        return address
    }
    
    func writePhrase(phrase: String) -> Int {
        phraseMap[phraseStart + phraseMap.count] = phrase
    }
}
