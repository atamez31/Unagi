//
//  UnagiFunctions.swift
//  Unagi_IDE
//
//  Created by Alex Elizondo  on 11/26/19.
//  Copyright © 2019 Alejandro Elizondo. All rights reserved.
//

import Foundation

class UnagiFunctions {
  let functions = ["if":
                        """
                        
                          if (false) {
                            print("Hello World!");
                          } elif (false) {
                            print("Hello Other World!");
                          } else {
                            print("Goodbye World!");
                          }
                        """,
                   "for":
                        """
                        
                          for(0 -> 10) {
                            print("Hello World!");
                          }
                        """,
                   "while":
                          """
                          
                            while(false) {
                              print("Hello World!");
                            }
                          """
  ]
}
