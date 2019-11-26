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

var num x;
var list<num>(4) arr;

  start {
  arr.add(11);
  arr.add(12);
  x = 0;
  arr.set(-1+1, 2*2-4);
  x = arr.get(x);
  print("-----x-----");
  print(x);
  print("end2");
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
} catch ErrorHandler.semanticError(let message) {
  print("Semantic error: \(message)")
} catch ErrorHandler.lexicError(let message) {
  print("Lexical error: \(message)")
} catch ErrorHandler.memory(let message) {
  print("Memory error: \(message)")
} catch ErrorHandler.indexOutOfBounds(let message) {
  print("Index out of bounds error: \(message)")
} catch {
  print("Unexpected error.")
}
//catch {
//  print("Parse error: \(error.localizedDescription)")
//}
