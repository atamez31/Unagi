//
//  ShapeViewController.swift
//  Unagi_IDE
//
//  Created by Alex Elizondo  on 11/27/19.
//  Copyright © 2019 Alejandro Elizondo. All rights reserved.
//

import UIKit
import SwiftUI
import ChameleonFramework

class ShapeViewController: UIViewController {
  var shape = Shape.none
  var color = FlatBlack().cgColor
  var paramList = [Double]()
  
  @IBOutlet weak var img: UIImageView!
  
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor =
        GradientColor(UIGradientStyle.topToBottom, frame: self.view.frame, colors: [FlatPowderBlue(), FlatWhite()])

      switch shape {
      case Shape.circle:
        drawCircle()
        break
      case Shape.square:
        drawSquare()
        break
      case Shape.rectangle:
        drawRectangle()
        break
      case Shape.triangle:
        drawTriangle()
        break
      default:
        print("No shape to draw")
      }
    }
    
    func drawCircle() {
      let renderer = UIGraphicsImageRenderer(size: CGSize(width: 300, height: 300))

      let image = renderer.image { ctx in
          let rect = CGRect(x: 0, y: 0, width: 270, height: 270)

          ctx.cgContext.setFillColor(color)
          ctx.cgContext.setStrokeColor(UIColor.black.cgColor)
          ctx.cgContext.setLineWidth(1)

          ctx.cgContext.addEllipse(in: rect)
          ctx.cgContext.drawPath(using: .fillStroke)
      }

      img.image = image
    }

    func drawRectangle() {
      let renderer = UIGraphicsImageRenderer(size: CGSize(width: 510, height: 260))

      let image = renderer.image { ctx in
        let rectangle = CGRect(x: 0, y: 0, width: 500, height: 250)

        ctx.cgContext.setFillColor(color)
        ctx.cgContext.setStrokeColor(UIColor.gray.cgColor)
        ctx.cgContext.setLineWidth(1)

        ctx.cgContext.addRect(rectangle)
        ctx.cgContext.drawPath(using: .fillStroke)
      }

      img.image = image
    }
  
    func drawSquare() {
      let renderer = UIGraphicsImageRenderer(size: CGSize(width: 250, height: 250))

      let image = renderer.image { ctx in
        let square = CGRect(x: 0, y: 0, width: 250, height: 250)

        ctx.cgContext.setFillColor(color)
        ctx.cgContext.setStrokeColor(UIColor.gray.cgColor)
        ctx.cgContext.setLineWidth(1)

        ctx.cgContext.addRect(square)
        ctx.cgContext.drawPath(using: .fillStroke)
      }

      img.image = image
    }

    func drawTriangle() {
      let renderer = UIGraphicsImageRenderer(size: CGSize(width: 280, height: 250))

      let image = renderer.image { ctx in
        
        ctx.cgContext.move(to: CGPoint(x: 20.0, y: 20.0))
        ctx.cgContext.addLine(to: CGPoint(x: 260.0, y: 230.0))
        ctx.cgContext.addLine(to: CGPoint(x: 100.0, y: 200.0))
        ctx.cgContext.addLine(to: CGPoint(x: 20.0, y: 20.0))

        ctx.cgContext.setLineWidth(5)
        ctx.cgContext.setStrokeColor(color)

        ctx.cgContext.strokePath()
      }

      img.image = image
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
