//
//  SemanticCube.swift
//  unagi
//
//  Created by Alex Elizondo  on 10/15/19.
//  Copyright © 2019 Andrés Tamez. All rights reserved.
//

import Foundation

class SemanticCube {

    let semanticCube: [[[Type]]]

    init() {
        let sumOperations: [[Type]] = [
            // num          decimal        bool       char          phrase
            [ Type.num,     Type.decimal,  Type.none,  Type.none,   Type.none    ],
            [ Type.decimal, Type.decimal,  Type.none,  Type.none,   Type.none    ],
            [ Type.none,    Type.none,     Type.none,  Type.none,   Type.none    ],
            [ Type.none,    Type.none,     Type.none,  Type.phrase, Type.phrase  ],
            [ Type.none,    Type.none,     Type.none,  Type.phrase, Type.phrase  ]
        ]

        let minusMultiplyDivideOperations: [[Type]] = [
            // num          decimal        bool        char          phrase
            [ Type.num,     Type.decimal,  Type.none,  Type.none,    Type.none   ],
            [ Type.decimal, Type.decimal,  Type.none,  Type.none,    Type.none   ],
            [ Type.none,    Type.none,     Type.none,  Type.none,    Type.none   ],
            [ Type.none,    Type.none,     Type.none,  Type.none,    Type.none   ],
            [ Type.none,    Type.none,     Type.none,  Type.none,    Type.none   ]
        ]

        // == <>
        let relationalEqualAndNotEqual: [[Type]] = [
            // num          decimal        bool        char          phrase
            [ Type.bool,    Type.bool,     Type.none,  Type.none,    Type.none   ],
            [ Type.bool,    Type.bool,     Type.none,  Type.none,    Type.none   ],
            [ Type.none,    Type.none,     Type.none,  Type.none,    Type.none   ],
            [ Type.none,    Type.none,     Type.none,  Type.bool,    Type.none   ],
            [ Type.none,    Type.none,     Type.none,  Type.none,    Type.bool   ]
        ]

        // > < >= <=
        let relationalOperations: [[Type]] = [
            // num          decimal        bool        char          phrase
            [ Type.bool,    Type.bool,     Type.none,  Type.none,    Type.none   ],
            [ Type.bool,    Type.bool,     Type.none,  Type.none,    Type.none   ],
            [ Type.none,    Type.none,     Type.none,  Type.none,    Type.none   ],
            [ Type.none,    Type.none,     Type.none,  Type.bool,    Type.none   ],
            [ Type.none,    Type.none,     Type.none,  Type.none,    Type.none   ]
        ]

        let logicalOperators: [[Type]] = [
            // num          decimal        bool        char          phrase
            [ Type.none,    Type.none,     Type.none,  Type.none,    Type.none   ],
            [ Type.none,    Type.none,     Type.none,  Type.none,    Type.none   ],
            [ Type.none,    Type.none,     Type.bool,  Type.none,    Type.none   ],
            [ Type.none,    Type.none,     Type.none,  Type.none,    Type.none   ],
            [ Type.none,    Type.none,     Type.none,  Type.none,    Type.none   ]
        ]

        let unaryOperators: [[Type]] = [[Type.num, Type.decimal, Type.none, Type.none, Type.none]]

        self.semanticCube = [
            sumOperations,
            minusMultiplyDivideOperations,
            relationalEqualAndNotEqual,
            relationalOperations,
            logicalOperators,
            unaryOperators
        ]
    }

    func validateOperation(op: String, leftOp: Type, rightOp: Type ) -> Type {
        var operatorIndex: Int
        switch op {
        case "+":
            operatorIndex = 0
        case "-", "*", "/":
            operatorIndex = 1
        case "==", "<>":
            operatorIndex = 2
        case ">", "<", ">=", "<=":
            operatorIndex = 3
        case "and", "or":
            operatorIndex = 4
        default:
            operatorIndex = 5
        }

        return semanticCube[operatorIndex][leftOp.rawValue-1][rightOp.rawValue-1]
    }
}
