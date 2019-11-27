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

func empty sort() {
  var num temp, i, j, before;
  i = 0;
  j = 1;

  for(0 -> arr.count()) {
    for(0 -> arr.count()) {
      before = j - 1;
      if(arr.get(j) < arr.get(before)) {
        temp = arr.get(before);
        arr.set(before, arr.get(j));
        arr.set(j, temp);
      }
    j = j + 1;
    }
  i = i + 1;
  }
}


start {
  var num cont;
  cont = 0;
  arr.add(10);
  arr.add(30);
  arr.add(20);
  arr.add(40);
x = arr.get(0+1) * 3;
print(x);
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
