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
            // num          decimal         bool       char          phrase
            [ Type.num,     Type.decimal,   nil,       nil,           nil        ],
            [ Type.decimal, Type.decimal,   nil,       nil,           nil        ],
            [ nil,          nil,            nil,       nil,           nil        ],
            [ nil,          nil,            nil,       Type.phrase,   Type.phrase ],
            [ nil,          nil,            nil,       Type.phrase,   Type.phrase ]
        ]

        let minusMultiplyDivideOperations: [[Type]] = [
            // num          decimal        bool        char          phrase
            [ Type.num,     Type.decimal,  nil,        nil,          nil        ],
            [ Type.decimal, Type.decimal,  nil,        nil,          nil        ],
            [ nil,          nil,           nil,        nil,          nil        ],
            [ nil,          nil,           nil,        nil,          nil        ],
            [ nil,          nil,           nil,        nil,          nil        ]
        ]

        // == <>
        let relationalEqualAndNotEqual: [[Type]] = [
            // num          decimal        bool        char            phrase
            [ Type.bool,    Type.bool,     nil,        nil,            nil         ],
            [ Type.bool,    Type.bool,     nil,        nil,            nil         ],
            [ nil,          nil,           nil,        nil,            nil         ],
            [ nil,          nil,           nil,        Type.bool,      nil         ],
            [ nil,          nil,           nil,        nil,            Type.bool    ]
        ]

        // > < >= <=
        let relationalOperations: [[Type]] = [
            // num          decimal        bool        char            phrase
            [ Type.bool,    Type.bool,     nil,        nil,            nil         ],
            [ Type.bool,    Type.bool,     nil,        nil,            nil         ],
            [ nil,          nil,           nil,        nil,            nil         ],
            [ nil,          nil,           nil,        Type.bool,      nil         ],
            [ nil,          nil,           nil,        nil,            nil         ]
        ]

        let logicalOperators: [[Type]] = [
            // num          decimal        bool        char            phrase
            [ nil,          nil,           nil,        nil,            nil         ],
            [ nil,          nil,           nil,        nil,            nil         ],
            [ nil,          nil,           Type.bool,  nil,            nil         ],
            [ nil,          nil,           nil,        nil,            nil         ],
            [ nil,          nil,           nil,        nil,            nil         ]
        ]

        let unaryOperators: [[Type]] = [ Type.num, Type.decimal, nil, nil, nil]

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

        return semanticCube[operatorIndex][leftOp-1][rightOp-1]
    }
}
