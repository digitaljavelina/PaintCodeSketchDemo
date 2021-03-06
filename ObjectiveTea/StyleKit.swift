//
//  StyleKit.swift
//  ObjectiveTea
//
//  Created by Robert Chen on 4/18/16.
//  Copyright © 2016 Razeware, LLC. All rights reserved.
//
//  Generated by PaintCode Plugin for Sketch
//  http://www.paintcodeapp.com/sketch
//

import UIKit



class StyleKit: NSObject {
  
  
  //MARK: - Colors
  
  static let plum = UIColor(hue: 0.126, saturation: 1, brightness: 0.804, alpha: 1)
  static let strawberry = UIColor(hue: 0.002, saturation: 0.369, brightness: 0.945, alpha: 1)
  static let matcha = UIColor(hue: 0.228, saturation: 0.42, brightness: 0.663, alpha: 1)
  static let taro = UIColor(hue: 0.678, saturation: 0.385, brightness: 0.918, alpha: 1)
  static let yogurt = UIColor(hue: 0.092, saturation: 0.201, brightness: 0.78, alpha: 1)
  static let coffee = UIColor(hue: 0.092, saturation: 0.731, brightness: 0.612, alpha: 1)
  static let mango = UIColor(hue: 0.114, saturation: 0.749, brightness: 0.984, alpha: 1)
  static let milkTea = UIColor(hue: 0.078, saturation: 0.447, brightness: 0.842, alpha: 1)
  static let rWGreen = UIColor(hue: 0.421, saturation: 1, brightness: 0.408, alpha: 1)
  
  
  //MARK: - Shadows
  
  static let rectangle12 = NSShadow(color: UIColor(white: 0, alpha: 0.5), offset: CGSize(width: 0, height: 2), blurRadius: 4)
  
  
  //MARK: - Canvas Drawings
  
  /// ObjectiveTea
  
    class func drawBubbleTeaCup(frame frame: CGRect = CGRect(x: 0, y: 0, width: 209, height: 251), teaColor: UIColor = milkTea, addBubbles: Bool = true, resizing: ResizingBehavior = .AspectFit) {
    /// General Declarations
    let context = UIGraphicsGetCurrentContext()!
    
    /// Resize To Frame
    CGContextSaveGState(context)
    let resizedFrame = resizing.apply(rect: CGRect(x: 0, y: 0, width: 209, height: 251), target: frame)
    CGContextTranslateCTM(context, resizedFrame.minX, resizedFrame.minY)
    let resizedScale = CGSize(width: resizedFrame.width / 209, height: resizedFrame.height / 251)
    CGContextScaleCTM(context, resizedScale.width, resizedScale.height)
    
    /// BubbleTeaCup
    do {
      CGContextSaveGState(context)
      CGContextTranslateCTM(context, 40, 30)
      
      /// Liquid
      let liquid = UIBezierPath()
      liquid.moveToPoint(CGPoint.zero)
      liquid.addLineToPoint(CGPoint(x: 98.91, y: 0))
      liquid.addLineToPoint(CGPoint(x: 83.34, y: 124.23))
      liquid.addLineToPoint(CGPoint(x: 18.09, y: 124.23))
      liquid.addLineToPoint(CGPoint.zero)
      liquid.closePath()
      liquid.moveToPoint(CGPoint.zero)
      CGContextSaveGState(context)
      CGContextTranslateCTM(context, 15, 65)
      liquid.usesEvenOddFillRule = true
      teaColor.setFill()
      liquid.fill()
      CGContextRestoreGState(context)
      
      /// Straw
      let straw = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: 19, height: 45), cornerRadius: 5)
      CGContextSaveGState(context)
      CGContextTranslateCTM(context, 62, 0)
      CGContextSaveGState(context)
      straw.lineWidth = 10
      CGContextBeginPath(context)
      CGContextAddPath(context, straw.CGPath)
      CGContextEOClip(context)
      UIColor(white: 0.592, alpha: 1).setStroke()
      straw.stroke()
      CGContextRestoreGState(context)
      CGContextRestoreGState(context)
      
      /// Cup
      let cup = UIBezierPath()
      cup.moveToPoint(CGPoint(x: 12.03, y: 13))
      cup.addLineToPoint(CGPoint(x: 29.21, y: 142.63))
      cup.addCurveToPoint(CGPoint(x: 37.13, y: 149.57), controlPoint1: CGPoint(x: 29.72, y: 146.47), controlPoint2: CGPoint(x: 33.27, y: 149.57))
      cup.addLineToPoint(CGPoint(x: 94.08, y: 149.57))
      cup.addCurveToPoint(CGPoint(x: 101.94, y: 142.62), controlPoint1: CGPoint(x: 97.94, y: 149.57), controlPoint2: CGPoint(x: 101.46, y: 146.47))
      cup.addLineToPoint(CGPoint(x: 118.18, y: 13))
      cup.addLineToPoint(CGPoint(x: 123.99, y: 13))
      cup.addCurveToPoint(CGPoint(x: 130, y: 6.99), controlPoint1: CGPoint(x: 127.31, y: 13), controlPoint2: CGPoint(x: 130, y: 10.31))
      cup.addLineToPoint(CGPoint(x: 130, y: 6.01))
      cup.addCurveToPoint(CGPoint(x: 123.99, y: 0), controlPoint1: CGPoint(x: 130, y: 2.69), controlPoint2: CGPoint(x: 127.31, y: 0))
      cup.addLineToPoint(CGPoint(x: 6.01, y: 0))
      cup.addCurveToPoint(CGPoint(x: 0, y: 6.01), controlPoint1: CGPoint(x: 2.69, y: 0), controlPoint2: CGPoint(x: 0, y: 2.69))
      cup.addLineToPoint(CGPoint(x: 0, y: 6.99))
      cup.addCurveToPoint(CGPoint(x: 6.01, y: 13), controlPoint1: CGPoint(x: 0, y: 10.31), controlPoint2: CGPoint(x: 2.69, y: 13))
      cup.addLineToPoint(CGPoint(x: 12.03, y: 13))
      cup.closePath()
      cup.moveToPoint(CGPoint(x: 12.03, y: 13))
      CGContextSaveGState(context)
      CGContextTranslateCTM(context, 0, 42)
      cup.lineWidth = 7
      UIColor(white: 0.592, alpha: 1).setStroke()
      cup.stroke()
      CGContextRestoreGState(context)
      
      /// Bubbles
      let bubbles = UIBezierPath()
      bubbles.moveToPoint(CGPoint(x: 15.5, y: 29))
      bubbles.addCurveToPoint(CGPoint(x: 23, y: 21.5), controlPoint1: CGPoint(x: 19.64, y: 29), controlPoint2: CGPoint(x: 23, y: 25.64))
      bubbles.addCurveToPoint(CGPoint(x: 15.5, y: 14), controlPoint1: CGPoint(x: 23, y: 17.36), controlPoint2: CGPoint(x: 19.64, y: 14))
      bubbles.addCurveToPoint(CGPoint(x: 8, y: 21.5), controlPoint1: CGPoint(x: 11.36, y: 14), controlPoint2: CGPoint(x: 8, y: 17.36))
      bubbles.addCurveToPoint(CGPoint(x: 15.5, y: 29), controlPoint1: CGPoint(x: 8, y: 25.64), controlPoint2: CGPoint(x: 11.36, y: 29))
      bubbles.closePath()
      bubbles.moveToPoint(CGPoint(x: 34.5, y: 29))
      bubbles.addCurveToPoint(CGPoint(x: 42, y: 21.5), controlPoint1: CGPoint(x: 38.64, y: 29), controlPoint2: CGPoint(x: 42, y: 25.64))
      bubbles.addCurveToPoint(CGPoint(x: 34.5, y: 14), controlPoint1: CGPoint(x: 42, y: 17.36), controlPoint2: CGPoint(x: 38.64, y: 14))
      bubbles.addCurveToPoint(CGPoint(x: 27, y: 21.5), controlPoint1: CGPoint(x: 30.36, y: 14), controlPoint2: CGPoint(x: 27, y: 17.36))
      bubbles.addCurveToPoint(CGPoint(x: 34.5, y: 29), controlPoint1: CGPoint(x: 27, y: 25.64), controlPoint2: CGPoint(x: 30.36, y: 29))
      bubbles.closePath()
      bubbles.moveToPoint(CGPoint(x: 52.5, y: 29))
      bubbles.addCurveToPoint(CGPoint(x: 60, y: 21.5), controlPoint1: CGPoint(x: 56.64, y: 29), controlPoint2: CGPoint(x: 60, y: 25.64))
      bubbles.addCurveToPoint(CGPoint(x: 52.5, y: 14), controlPoint1: CGPoint(x: 60, y: 17.36), controlPoint2: CGPoint(x: 56.64, y: 14))
      bubbles.addCurveToPoint(CGPoint(x: 45, y: 21.5), controlPoint1: CGPoint(x: 48.36, y: 14), controlPoint2: CGPoint(x: 45, y: 17.36))
      bubbles.addCurveToPoint(CGPoint(x: 52.5, y: 29), controlPoint1: CGPoint(x: 45, y: 25.64), controlPoint2: CGPoint(x: 48.36, y: 29))
      bubbles.closePath()
      bubbles.moveToPoint(CGPoint(x: 61.5, y: 15))
      bubbles.addCurveToPoint(CGPoint(x: 69, y: 7.5), controlPoint1: CGPoint(x: 65.64, y: 15), controlPoint2: CGPoint(x: 69, y: 11.64))
      bubbles.addCurveToPoint(CGPoint(x: 61.5, y: 0), controlPoint1: CGPoint(x: 69, y: 3.36), controlPoint2: CGPoint(x: 65.64, y: 0))
      bubbles.addCurveToPoint(CGPoint(x: 54, y: 7.5), controlPoint1: CGPoint(x: 57.36, y: 0), controlPoint2: CGPoint(x: 54, y: 3.36))
      bubbles.addCurveToPoint(CGPoint(x: 61.5, y: 15), controlPoint1: CGPoint(x: 54, y: 11.64), controlPoint2: CGPoint(x: 57.36, y: 15))
      bubbles.closePath()
      bubbles.moveToPoint(CGPoint(x: 43.5, y: 15))
      bubbles.addCurveToPoint(CGPoint(x: 51, y: 7.5), controlPoint1: CGPoint(x: 47.64, y: 15), controlPoint2: CGPoint(x: 51, y: 11.64))
      bubbles.addCurveToPoint(CGPoint(x: 43.5, y: 0), controlPoint1: CGPoint(x: 51, y: 3.36), controlPoint2: CGPoint(x: 47.64, y: 0))
      bubbles.addCurveToPoint(CGPoint(x: 36, y: 7.5), controlPoint1: CGPoint(x: 39.36, y: 0), controlPoint2: CGPoint(x: 36, y: 3.36))
      bubbles.addCurveToPoint(CGPoint(x: 43.5, y: 15), controlPoint1: CGPoint(x: 36, y: 11.64), controlPoint2: CGPoint(x: 39.36, y: 15))
      bubbles.closePath()
      bubbles.moveToPoint(CGPoint(x: 25.5, y: 15))
      bubbles.addCurveToPoint(CGPoint(x: 33, y: 7.5), controlPoint1: CGPoint(x: 29.64, y: 15), controlPoint2: CGPoint(x: 33, y: 11.64))
      bubbles.addCurveToPoint(CGPoint(x: 25.5, y: 0), controlPoint1: CGPoint(x: 33, y: 3.36), controlPoint2: CGPoint(x: 29.64, y: 0))
      bubbles.addCurveToPoint(CGPoint(x: 18, y: 7.5), controlPoint1: CGPoint(x: 21.36, y: 0), controlPoint2: CGPoint(x: 18, y: 3.36))
      bubbles.addCurveToPoint(CGPoint(x: 25.5, y: 15), controlPoint1: CGPoint(x: 18, y: 11.64), controlPoint2: CGPoint(x: 21.36, y: 15))
      bubbles.closePath()
      bubbles.moveToPoint(CGPoint(x: 7.5, y: 15))
      bubbles.addCurveToPoint(CGPoint(x: 15, y: 7.5), controlPoint1: CGPoint(x: 11.64, y: 15), controlPoint2: CGPoint(x: 15, y: 11.64))
      bubbles.addCurveToPoint(CGPoint(x: 7.5, y: 0), controlPoint1: CGPoint(x: 15, y: 3.36), controlPoint2: CGPoint(x: 11.64, y: 0))
      bubbles.addCurveToPoint(CGPoint(x: 0, y: 7.5), controlPoint1: CGPoint(x: 3.36, y: 0), controlPoint2: CGPoint(x: 0, y: 3.36))
      bubbles.addCurveToPoint(CGPoint(x: 7.5, y: 15), controlPoint1: CGPoint(x: 0, y: 11.64), controlPoint2: CGPoint(x: 3.36, y: 15))
      bubbles.closePath()
      bubbles.moveToPoint(CGPoint(x: 7.5, y: 15))
      CGContextSaveGState(context)
      CGContextTranslateCTM(context, 31, 158)
      bubbles.usesEvenOddFillRule = true
      UIColor(hue: 0.791, saturation: 0, brightness: 0.29, alpha: 1).setFill()
        if addBubbles {
            bubbles.fill()
        }
      CGContextRestoreGState(context)
      
      /// Smile
      let smile = UIBezierPath()
      smile.moveToPoint(CGPoint(x: 19.08, y: 19.31))
      smile.addCurveToPoint(CGPoint(x: 20.02, y: 21.07), controlPoint1: CGPoint(x: 19.22, y: 19.76), controlPoint2: CGPoint(x: 19.52, y: 20.37))
      smile.addCurveToPoint(CGPoint(x: 23.21, y: 24.13), controlPoint1: CGPoint(x: 20.78, y: 22.14), controlPoint2: CGPoint(x: 21.83, y: 23.18))
      smile.addCurveToPoint(CGPoint(x: 39.29, y: 28.11), controlPoint1: CGPoint(x: 26.8, y: 26.59), controlPoint2: CGPoint(x: 32.07, y: 28.04))
      smile.addCurveToPoint(CGPoint(x: 55.51, y: 24.56), controlPoint1: CGPoint(x: 46.61, y: 28.17), controlPoint2: CGPoint(x: 51.92, y: 26.86))
      smile.addCurveToPoint(CGPoint(x: 58.58, y: 21.8), controlPoint1: CGPoint(x: 56.83, y: 23.71), controlPoint2: CGPoint(x: 57.84, y: 22.77))
      smile.addCurveToPoint(CGPoint(x: 59.53, y: 20.15), controlPoint1: CGPoint(x: 59.07, y: 21.15), controlPoint2: CGPoint(x: 59.38, y: 20.58))
      smile.addCurveToPoint(CGPoint(x: 58.02, y: 16.95), controlPoint1: CGPoint(x: 60, y: 18.85), controlPoint2: CGPoint(x: 59.32, y: 17.42))
      smile.addCurveToPoint(CGPoint(x: 54.82, y: 18.46), controlPoint1: CGPoint(x: 56.72, y: 16.48), controlPoint2: CGPoint(x: 55.29, y: 17.16))
      smile.addCurveToPoint(CGPoint(x: 54.59, y: 18.78), controlPoint1: CGPoint(x: 54.84, y: 18.42), controlPoint2: CGPoint(x: 54.77, y: 18.54))
      smile.addCurveToPoint(CGPoint(x: 52.8, y: 20.35), controlPoint1: CGPoint(x: 54.21, y: 19.28), controlPoint2: CGPoint(x: 53.63, y: 19.82))
      smile.addCurveToPoint(CGPoint(x: 39.33, y: 23.11), controlPoint1: CGPoint(x: 50.1, y: 22.09), controlPoint2: CGPoint(x: 45.74, y: 23.16))
      smile.addCurveToPoint(CGPoint(x: 26.03, y: 20), controlPoint1: CGPoint(x: 33.06, y: 23.05), controlPoint2: CGPoint(x: 28.75, y: 21.87))
      smile.addCurveToPoint(CGPoint(x: 24.11, y: 18.19), controlPoint1: CGPoint(x: 25.15, y: 19.4), controlPoint2: CGPoint(x: 24.52, y: 18.78))
      smile.addCurveToPoint(CGPoint(x: 23.82, y: 17.73), controlPoint1: CGPoint(x: 23.9, y: 17.9), controlPoint2: CGPoint(x: 23.82, y: 17.73))
      smile.addCurveToPoint(CGPoint(x: 20.66, y: 16.15), controlPoint1: CGPoint(x: 23.39, y: 16.42), controlPoint2: CGPoint(x: 21.97, y: 15.71))
      smile.addCurveToPoint(CGPoint(x: 19.08, y: 19.31), controlPoint1: CGPoint(x: 19.35, y: 16.58), controlPoint2: CGPoint(x: 18.64, y: 18))
      smile.closePath()
      smile.moveToPoint(CGPoint(x: 3.93, y: 6.33))
      smile.addCurveToPoint(CGPoint(x: 4.61, y: 5.28), controlPoint1: CGPoint(x: 3.98, y: 6.15), controlPoint2: CGPoint(x: 4.19, y: 5.73))
      smile.addCurveToPoint(CGPoint(x: 8.2, y: 4), controlPoint1: CGPoint(x: 5.36, y: 4.49), controlPoint2: CGPoint(x: 6.48, y: 4))
      smile.addCurveToPoint(CGPoint(x: 12.05, y: 5.35), controlPoint1: CGPoint(x: 9.95, y: 4), controlPoint2: CGPoint(x: 11.17, y: 4.51))
      smile.addCurveToPoint(CGPoint(x: 12.88, y: 6.5), controlPoint1: CGPoint(x: 12.54, y: 5.83), controlPoint2: CGPoint(x: 12.81, y: 6.29))
      smile.addCurveToPoint(CGPoint(x: 15.44, y: 7.7), controlPoint1: CGPoint(x: 13.26, y: 7.54), controlPoint2: CGPoint(x: 14.4, y: 8.08))
      smile.addCurveToPoint(CGPoint(x: 16.65, y: 5.15), controlPoint1: CGPoint(x: 16.48, y: 7.33), controlPoint2: CGPoint(x: 17.02, y: 6.19))
      smile.addCurveToPoint(CGPoint(x: 14.82, y: 2.47), controlPoint1: CGPoint(x: 16.38, y: 4.4), controlPoint2: CGPoint(x: 15.81, y: 3.43))
      smile.addCurveToPoint(CGPoint(x: 8.2, y: 0), controlPoint1: CGPoint(x: 13.21, y: 0.92), controlPoint2: CGPoint(x: 11, y: 0))
      smile.addCurveToPoint(CGPoint(x: 1.7, y: 2.54), controlPoint1: CGPoint(x: 5.38, y: 0), controlPoint2: CGPoint(x: 3.2, y: 0.94))
      smile.addCurveToPoint(CGPoint(x: 0.07, y: 5.31), controlPoint1: CGPoint(x: 0.77, y: 3.53), controlPoint2: CGPoint(x: 0.27, y: 4.54))
      smile.addCurveToPoint(CGPoint(x: 1.49, y: 7.76), controlPoint1: CGPoint(x: -0.22, y: 6.38), controlPoint2: CGPoint(x: 0.42, y: 7.47))
      smile.addCurveToPoint(CGPoint(x: 3.93, y: 6.33), controlPoint1: CGPoint(x: 2.56, y: 8.04), controlPoint2: CGPoint(x: 3.65, y: 7.4))
      smile.closePath()
      smile.moveToPoint(CGPoint(x: 62.93, y: 6.33))
      smile.addCurveToPoint(CGPoint(x: 63.61, y: 5.28), controlPoint1: CGPoint(x: 62.98, y: 6.15), controlPoint2: CGPoint(x: 63.19, y: 5.73))
      smile.addCurveToPoint(CGPoint(x: 67.2, y: 4), controlPoint1: CGPoint(x: 64.36, y: 4.49), controlPoint2: CGPoint(x: 65.48, y: 4))
      smile.addCurveToPoint(CGPoint(x: 71.05, y: 5.35), controlPoint1: CGPoint(x: 68.95, y: 4), controlPoint2: CGPoint(x: 70.17, y: 4.51))
      smile.addCurveToPoint(CGPoint(x: 71.88, y: 6.5), controlPoint1: CGPoint(x: 71.54, y: 5.83), controlPoint2: CGPoint(x: 71.81, y: 6.29))
      smile.addCurveToPoint(CGPoint(x: 74.44, y: 7.7), controlPoint1: CGPoint(x: 72.26, y: 7.54), controlPoint2: CGPoint(x: 73.4, y: 8.08))
      smile.addCurveToPoint(CGPoint(x: 75.65, y: 5.15), controlPoint1: CGPoint(x: 75.48, y: 7.33), controlPoint2: CGPoint(x: 76.02, y: 6.19))
      smile.addCurveToPoint(CGPoint(x: 73.82, y: 2.47), controlPoint1: CGPoint(x: 75.38, y: 4.4), controlPoint2: CGPoint(x: 74.81, y: 3.43))
      smile.addCurveToPoint(CGPoint(x: 67.2, y: 0), controlPoint1: CGPoint(x: 72.21, y: 0.92), controlPoint2: CGPoint(x: 70, y: 0))
      smile.addCurveToPoint(CGPoint(x: 60.7, y: 2.54), controlPoint1: CGPoint(x: 64.38, y: 0), controlPoint2: CGPoint(x: 62.2, y: 0.94))
      smile.addCurveToPoint(CGPoint(x: 59.07, y: 5.31), controlPoint1: CGPoint(x: 59.77, y: 3.53), controlPoint2: CGPoint(x: 59.27, y: 4.54))
      smile.addCurveToPoint(CGPoint(x: 60.49, y: 7.76), controlPoint1: CGPoint(x: 58.78, y: 6.38), controlPoint2: CGPoint(x: 59.42, y: 7.47))
      smile.addCurveToPoint(CGPoint(x: 62.93, y: 6.33), controlPoint1: CGPoint(x: 61.56, y: 8.04), controlPoint2: CGPoint(x: 62.65, y: 7.4))
      smile.closePath()
      smile.moveToPoint(CGPoint(x: 62.93, y: 6.33))
      CGContextSaveGState(context)
      CGContextTranslateCTM(context, 27, 78)
      UIColor(hue: 0.791, saturation: 0, brightness: 0.29, alpha: 1).setFill()
      smile.fill()
      CGContextRestoreGState(context)
      
      CGContextRestoreGState(context)
    }
    
    CGContextRestoreGState(context)
  }
  
  
  //MARK: - Canvas Images
  
  /// ObjectiveTea
  
  class func imageOfBubbleTeaCup(size size: CGSize = CGSize(width: 209, height: 251), resizing: ResizingBehavior = .AspectFit) -> UIImage {
    var image: UIImage
    
    UIGraphicsBeginImageContextWithOptions(size, false, 0)
    StyleKit.drawBubbleTeaCup(frame: CGRect(origin: CGPoint.zero, size: size), resizing: resizing)
    image = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    
    return image
  }
  
  
  //MARK: - Resizing Behavior
  
  enum ResizingBehavior {
    case AspectFit /// The content is proportionally resized to fit into the target rectangle.
    case AspectFill /// The content is proportionally resized to completely fill the target rectangle.
    case Stretch /// The content is stretched to match the entire target rectangle.
    case Center /// The content is centered in the target rectangle, but it is NOT resized.
    
    func apply(rect rect: CGRect, target: CGRect) -> CGRect {
      if rect == target || target == CGRect.zero {
        return rect
      }
      
      var scales = CGSize.zero
      scales.width = abs(target.width / rect.width)
      scales.height = abs(target.height / rect.height)
      
      switch self {
        case .AspectFit:
          scales.width = min(scales.width, scales.height)
          scales.height = scales.width
        case .AspectFill:
          scales.width = max(scales.width, scales.height)
          scales.height = scales.width
        case .Stretch:
          break
        case .Center:
          scales.width = 1
          scales.height = 1
      }
      
      var result = rect.standardized
      result.size.width *= scales.width
      result.size.height *= scales.height
      result.origin.x = target.minX + (target.width - result.width) / 2
      result.origin.y = target.minY + (target.height - result.height) / 2
      return result
    }
  }
  
  
}



extension NSShadow {
  
  convenience init(color: UIColor, offset: CGSize, blurRadius: CGFloat) {
    self.init()
    self.shadowColor = color
    self.shadowOffset = offset
    self.shadowBlurRadius = blurRadius
  }
  
  func set() {
    let context = UIGraphicsGetCurrentContext()!
    CGContextSetShadowWithColor(context, self.shadowOffset, self.shadowBlurRadius, (self.shadowColor as! UIColor).CGColor)
  }
  
}
