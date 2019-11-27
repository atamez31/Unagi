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
                        """,
                   "drawSquare":
                         """
                         
                           drawSquare(red);
                         """,
                   "drawRectangle":
                         """
                         
                           drawRectangle(red);
                         """,
                   "drawCircle":
                        """
                        
                          drawCircle(red);
                        """,
                   "drawTriangle":
                       """
                       
                         drawTriangle(red);
                       """,
  ]

  let methods = ["fibonacci":
                        """
                          program unagi:
                          
                          func num fibs(num n) {
                            if (n <= 1) {
                              return n;
                            }
                            return fibs(n - 1) + fibs(n - 2);
                          }
                          
                          start {
                          print(fibs(10));
                          }
                        """,
                   "factorial":
                        """
                          program unagi:
                          
                          func num fact(num n) {
                            if (n == 1) {
                              return 1;
                            }
                            return fact(n - 1) * n;
                          }
                          
                          start {
                          print(fact(10));
                          }
                        """,
                   "sort":
                          """
                            program unagi :

                            var num x;
                            var list<num>(4) arr;

                            func empty sort() {
                              var num temp, i, j, before;
                              i = 0;
                              for(0 -> arr.count()) {
                                j = 1;
                                for(1 -> arr.count()) {
                                  if(arr.get(j) < arr.get(j - 1)) {
                                    temp = arr.get(j - 1);
                                    arr.set(j - 1, arr.get(j));
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
                              sort();
                              for(0 -> arr.count()) {
                                print(arr.get(cont));
                                cont = cont + 1;
                              }
                            }
                          """,
                   "find":
                          """
                            program unagi :

                            var list<num>(4) arr;

                            func num find(list<num>(4) a, num n) {
                              var num i;
                              i = 0;
                              for(0 -> a.count()) {
                                if (a.get(i) == n) {
                                  return i;
                                }
                                i = i + 1;
                              }
                              return -1;
                            }

                            start {
                              arr.add(100);
                              arr.add(200);
                              arr.add(300);
                              arr.add(400);
                              if(find(arr, 200) >= 0) {
                                print("find correcto");
                              } else {
                                print("find incorrecto");
                              }
                            }
                          """,
                   "fibonacci iterativo":
                                        """
                                          program unagi :

                                          var num x;
                                          var list<num>(4) arr;

                                          func num fiboIte(num n) {
                                            var num n1, n2, n3;
                                            n1 = 0;
                                            n2 = 1;

                                            for(1 -> n) {
                                              n3 = n1 + n2;
                                              n1 = n2;
                                              n2 = n3;
                                            }
                                            return n2;
                                          }


                                          start {
                                            print(fiboIte(10));
                                          }
                                        """,
                   "factorial iterativo":
                                        """
                                          program unagi :

                                          var num x;
                                          var list<num>(4) arr;

                                          func num factIte(num n) {
                                            var num n1, j;
                                            n1 = 1;
                                            j = 1;

                                            for(1 -> n) {
                                              n1 = n1 * j;
                                              j = j + 1;
                                            }

                                            return n1;
                                          }


                                          start {
                                            print(factIte(10));
                                          }
                                        """
  ]
}
