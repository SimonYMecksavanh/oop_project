//
//  Line.swift
//  PolyDraw
//
//  Created by Mecksavanh, Simon on 2017-04-27.
//  Copyright © 2017 Chris Chadillon. All rights reserved.
//

import UIKit

class Line:Shape{
    var nx:Double
    var ny:Double
    var lineWidth:CGFloat
    var lineColor:CGColor
    
    init(X: Double, Y: Double, nx:Double, ny:Double, lineWidth:CGFloat, lineColor:CGColor) {
        self.nx = nx
        self.ny = ny
        self.lineWidth = lineWidth
        self.lineColor = lineColor
        super.init(X: X, Y: Y)
    }

    override func draw(_ theContext: CGContext) {
        theContext.setStrokeColor(self.lineColor)
        theContext.setLineWidth(self.lineWidth)
        let startingPoint = CGPoint(x: self.X, y: self.Y)
        let endingPoint = CGPoint(x: nx, y: ny)
        theContext.addLines(between: [startingPoint, endingPoint])
    }
}
