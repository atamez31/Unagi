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

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
  
  var method = ""
  
  let defaultText = """
                    program unagi:
                      start {
                        print("Hello World!");
                      }
                    """
  
  var prints = [String]()
  let unagiFunctions = UnagiFunctions.init()
  var functionsList = [String]()
  
  @IBOutlet weak var textView: UITextView!
  @IBOutlet weak var addBtn: UIButton!
  @IBOutlet weak var funcPicker: UIPickerView!
  @IBOutlet weak var runBtn: UIButton!
  @IBOutlet weak var clearBtn: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.funcPicker.delegate = self
    self.funcPicker.dataSource = self
    
    self.view.backgroundColor =
      GradientColor(UIGradientStyle.topToBottom, frame: self.view.frame, colors: [FlatPowderBlue(), FlatWhite()])
    textView.backgroundColor = FlatNavyBlue()
    addBtn.backgroundColor = FlatGrayDark()
    runBtn.backgroundColor = FlatMint()
    clearBtn.backgroundColor = FlatWatermelon()
    functionsList = Array(unagiFunctions.functions.keys)
    
    addBtn.clipsToBounds = true
    addBtn.layer.borderWidth = 1
    addBtn.layer.cornerRadius = addBtn.frame.height/2
    addBtn.layer.masksToBounds = false
    
    textView.layer.cornerRadius = textView.frame.height/25
    
    textView.text = method == "" ? defaultText : method
  }

  @IBAction func runCode(_ sender: UIButton) {
    let code = textView.text!
    
    do {
      let lexer = unagiLexer(ANTLRInputStream(code))
      let tokens = CommonTokenStream(lexer)
      let parser = try unagiParser(tokens)
      let tree = try parser.program()
      let walker = ParseTreeWalker()
      let unagi = unagiBaseListener.init()
      try walker.walk(unagi, tree)
      prints = unagi.prints
    } catch {
      print("Parse error: \(error.localizedDescription)")
    }
    let vc = self.storyboard?.instantiateViewController(identifier: "shapeVC") as! ShapeViewController
    vc.shape = Shape.triangle
    vc.color = FlatMint().cgColor
    let printString = prints.joined(separator: "\n")
    let alert = UIAlertController(title: "Console", message: printString, preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {_ in
      self.present(vc, animated: true, completion: nil)
    }))
    
    self.present(alert, animated: true)
  }

  @IBAction func clearBtnClick(_ sender: UIButton) {
    textView.text = defaultText
  }
  
  @IBAction func addFunction(_ sender: UIButton) {
    let selectedFunction = functionsList[funcPicker.selectedRow(inComponent: 0)]
    let selectedFunctionCode = unagiFunctions.functions[selectedFunction] ?? ""
    
    textView.text.removeLast()
    textView.text = textView.text + selectedFunctionCode + "\n}"
  }
  
  func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
  }
  
  func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return unagiFunctions.functions.count
  }
  
  func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return functionsList[row]
  }
  
}

