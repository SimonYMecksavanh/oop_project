//
//  Rect.swift
//  PolyDraw
//
//  Created by Chris Chadillon on 2017-03-02.
//  Copyright © 2017 Chris Chadillon. All rights reserved.
//

import UIKit

class Rect:Shape {
    var theHeight:Double
    var theWidth:Double
    var lineWidth:CGFloat
    var lineColor:CGColor
    var fillColor:CGColor
    var isFill:Bool
    
    init(X:Double, Y:Double, theHeight:Double, theWidth:Double, lineWidth:CGFloat, lineColor:CGColor, fillColor:CGColor, isFill:Bool) {
        self.theHeight = theHeight
        self.theWidth = theWidth
        self.lineWidth = lineWidth
        self.lineColor = lineColor
        self.fillColor = fillColor
        self.isFill = isFill
        super.init(X: X, Y: Y)
    }
    
    override func draw(_ theContext: CGContext) {
        theContext.setStrokeColor(self.lineColor)
        theContext.setLineWidth(self.lineWidth)
        if isFill{
            theContext.setFillColor(self.fillColor)
        }
        let rect = CGRect(x: self.X, y: self.Y, width: self.theWidth, height: self.theHeight)
        theContext.addRect(rect)
    }
}

















