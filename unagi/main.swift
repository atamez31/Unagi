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

func empty arrPam(list<num>(4) a) {
  var num i;
  i = 0;
print("---------count A");
print(a.count());
print("---------param n");
print(a.count());

  for(0 -> a.count()) {
    print("valor");
    print(a.get(i));
    i = i + 1;
  }
}

func num find(list<num>(4) a, num n) {
  var num i;
  i = 0;
print("-----Find-----");
  for(0 -> a.count()) {
    if (a.get(i) == n) {
      return i;
    }
    i = i + 1;
  }
  return -1;
}

func empty printP2(num str1, num str2) {
  print(str1 + str2);
}
  start {
  var num contador, contFor;
  var phrase strFor, strWhile;
var bool checkFind;
  contador = 0;
  contFor = 0;
  print("----params----");
  printP2(1+2, 3*10+1);

  strFor = "forloop";
  strWhile = "while";
  print("contador:");
  print(contador);
  arr.add(100);
  arr.add(200);
  arr.add(300);
  arr.add(400);
  print(arr.get(0));
  print("----for----");
  for(0 -> arr.count()) {
    print(strFor);
  }

  print("----while----");
  print("contador:");
  print(contador);
  print("arr.count:");
  print(arr.count());
  while(contador < arr.count()) {
    print(contador);
    contador = contador + 1;
  }

  print("----if's----");
  if(strFor == "forloop") {
    print("if correcto");
  } else {
    print("if incorrecto");
  }

  if(strFor <> "forloop") {
    print("else incorrecto");
  } else {
    print("else correcto");
  }

  if(strFor <> "forloop") {
    print("elif incorrecto");
  } elif (strFor <> strWhile) {
    print("elif correcto");
  } else {
    print("elif incorrecto");
  }

  print("----factorial----");
  print(fact(10));
  if(fact(10) == 3628800) {
    print("factorial correcto");
  } else {
    print("factorial incorrecto");
}

if(find(arr, 200) >= 0) {
print("find correcto");
} else {
print("find incorrecto");
}
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
