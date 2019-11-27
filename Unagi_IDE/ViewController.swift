//
//  ViewController.swift
//  Unagi_IDE
//
//  Created by Alex Elizondo  on 11/23/19.
//  Copyright © 2019 Alejandro Elizondo. All rights reserved.
//

import UIKit
import Antlr4
import ChameleonFramework

class ViewController: UIViewController {
  @IBOutlet weak var textView: UITextView!
    
  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.backgroundColor = FlatPowderBlue()
    textView.backgroundColor = FlatWhite()
  }

  @IBAction func runCode(_ sender: UIButton) {
    let code = textView.text!
    
    do {
      
      let lexer = unagiLexer(ANTLRInputStream(code))
      let tokens = CommonTokenStream(lexer)
      let parser = try unagiParser(tokens)
      let tree = try parser.program()
      let walker = ParseTreeWalker()
      let basicLearn = unagiBaseListener.init()
      try walker.walk(basicLearn, tree)
    } catch {
      print("Parse error: \(error.localizedDescription)")
    }
  }
  @IBAction func clearBtnClick(_ sender: UIButton) {
    textView.text = ""
  }
  
}

