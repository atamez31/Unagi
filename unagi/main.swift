//
//  main.swift
//  unagi
//
//  Created by Andrés Tamez on 10/1/19.
//  Copyright © 2019 Andrés Tamez. All rights reserved.
//

import Foundation
import Antlr4

let test = """
    program test12 :

    var num x,y;

    start {
      y = 10;
      x = 10 * 2;
      y = y + x;
    }
"""

func getValueFromMemory<T>(valType: Type) -> T.Type {
  return Int.self as! T.Type;
}

do {
  
    let lexer = unagiLexer(ANTLRInputStream(test))
    let tokens = CommonTokenStream(lexer)
    let parser = try unagiParser(tokens)
    let tree = try parser.program()
    let walker = ParseTreeWalker()
    let basicLearn = unagiBaseListener.init()
    try walker.walk(basicLearn, tree)
} catch {
    print("Parse error: \(error.localizedDescription)")
}
