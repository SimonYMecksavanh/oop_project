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
    
    init(X: Double, Y: Double, nx:Double, ny:Double) {
        self.nx = nx
        self.ny = ny
        super.init(X: X, Y: Y)
    }

    override func draw(_ theContext: CGContext) {
        let startingPoint = CGPoint(x: self.X, y: self.Y)
        let endingPoint = CGPoint(x: nx, y: ny)
        theContext.addLines(between: [startingPoint, endingPoint])
    }
}
