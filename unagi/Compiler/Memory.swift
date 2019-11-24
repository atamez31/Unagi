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

  private var numCount = 0
  private var decimalCount = 0
  private var boolCount = 0
  private var charCount = 0
  private var phraseCount = 0

  private var numTemporalCount = 0
  private var decimalTemporalCount = 0
  private var boolTemporalCount = 0
  private var charTemporalCount = 0
  private var phraseTemporalCount = 0

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
  
  func getAddressType(address: Int) -> Type {
    if address < self.decimalStart {
      return Type.num
    }
    if address < self.boolStart {
      return Type.decimal
    }
    if address < self.charStart {
      return Type.bool
    }
    if address < self.phraseStart {
      return Type.char
    }
    return Type.phrase
  }
  
  func getValueFromMemory(address: Int) -> Any? {
    if address < self.decimalStart {
      return numMap[address] ?? nil
    }
    if address < self.boolStart {
      return decimalMap[address] ?? nil
    }
    if address < self.charStart {
      return boolMap[address] ?? nil
    }
    if address < self.phraseStart {
      return charMap[address] ?? nil
    }
    return phraseMap[address] ?? nil
  }
  
//  func getNum(address: Int) -> Int {
//    // Return MAXINT if address doesn't exist
//    return numMap[address] ?? Int.max
//  }
//
//  func getDecimal(address: Int) -> Double {
//    return decimalMap[address] ?? -1
//  }
//
//  func getBool(address: Int) -> Bool {
//    return boolMap[address] ?? false
//  }
//
//  func getChar(address: Int) -> Character {
//    return charMap[address] ?? "?"
//  }
//
//  func getPhrase(address: Int) -> String {
//        return phraseMap[address] ?? "?"
//    }

  // **************** Variable Writters ****************

  func writeNum(num: Int, address: Int? = nil) {
    numMap[address == nil ? numStart + numMap.count : address!] = num
  }
    
  func writeDecimal(decimal: Double, address: Int? = nil) {
    decimalMap[address == nil ? decimalStart + decimalMap.count : address!] = decimal
  }
    
  func writeBool(bool: Bool, address: Int? = nil) {
    boolMap[address == nil ? boolStart + boolMap.count : address!] = bool
  }
    
  func writeChar(char: Character, address: Int? = nil) {
    charMap[address == nil ? charStart + charMap.count : address!] = char
  }
    
  func writePhrase(phrase: String, address: Int? = nil) {
    phraseMap[address == nil ? phraseStart + phraseMap.count : address!] = phrase
  }

  // **************** Get next memory address available ****************

  func getNextAddress(type: Type, size: Int = 1) -> Int {
    switch type {
      case Type.num:
        numTemporalCount += size
        return numStart + numTemporalCount - size
      case Type.decimal:
        decimalTemporalCount += size
        return decimalStart + decimalTemporalCount - size
      case Type.bool:
        boolTemporalCount += size
        return boolStart + boolTemporalCount - size
      case Type.char:
        charTemporalCount += size
        return charStart + charTemporalCount - size
      case Type.phrase:
        phraseTemporalCount += size
        return phraseStart + phraseTemporalCount - size
        default:
        // TODO: Throw error
        return 0
    }
  }

  func getNextTemporalAddress(type: Type) -> Int {
    switch type {
      case Type.num:
        numTemporalCount += 1
        return numStart + 1000 + numTemporalCount - 1
      case Type.decimal:
        decimalTemporalCount += 1
        return decimalStart + 1000 + decimalTemporalCount - 1
      case Type.bool:
        boolTemporalCount += 1
        return boolStart + 1000 + boolTemporalCount - 1
      case Type.char:
        charTemporalCount += 1
        return charStart + 1000 + charTemporalCount - 1
      case Type.phrase:
        phraseTemporalCount += 1
        return phraseStart + 1000 + phraseTemporalCount - 1
      case Type.list:
        // TODO: Case for list
        return 0
        default:
        // TODO: Throw error
        return 0
    }
  }

  // Resets all of its variables. Used to initialize a new function during compilation.
  func reset() {
    numTemporalCount = 0
    decimalTemporalCount = 0
    boolTemporalCount = 0
    charTemporalCount = 0
    phraseTemporalCount = 0

    numCount = 0
    decimalCount = 0
    boolCount = 0
    charCount = 0
    phraseCount = 0
  }
}
