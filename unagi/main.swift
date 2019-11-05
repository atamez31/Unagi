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
        x = 10 * 5 / 6 * 5;
        y = 5;

        if (x > 5 and x < 11) {
            x = 5;
        } else {
            x = 10;
        }

        for (1 -> 10) {
            print("Hello World!");
        }
    }
"""

print("Hello, World!")

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
