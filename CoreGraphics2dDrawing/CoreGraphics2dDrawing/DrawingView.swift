//
//  DrawingView.swift
//  CoreGraphics2dDrawing
//
//  Created by Jason Sturges on 1/12/17.
//  Copyright © 2017 Jason Sturges. All rights reserved.
//

import UIKit

class DrawingView: UIView {

    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        let components: [CGFloat] = [0.0, 0.0, 1.0, 1.0]
        let color = CGColor(colorSpace: colorSpace, components: components)
        
        context?.setLineWidth(2.0)
        context?.setStrokeColor(color!)
        context?.move(to: CGPoint(x: 0, y: 0))
        context?.addLine(to: CGPoint(x: bounds.width * 0.5, y: bounds.height * 0.5))
        context?.strokePath()
    }

}
