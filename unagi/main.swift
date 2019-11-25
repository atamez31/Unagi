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

  func num fibs(num n) {
    if (n <= 1) {
      return n;
    }
    return fibs(n - 1) + fibs(n - 2);
  }

  func num fact(num n) {
    if (n == 1) {
      return 1;
    }
    return fact(n - 1) * n;
  }

  start {
  arr.add(11);
  arr.add(12);
  x = arr.get(2.5);
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
} catch {
  print("Parse error: \(error.localizedDescription)")
}
