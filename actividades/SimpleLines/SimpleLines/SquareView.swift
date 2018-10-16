//
//  SquareView.swift
//  SimpleLines
//
//  Created by DelaRosa Fernando on 13/10/18.
//  Copyright © 2018 DeLaRosa Fernando. All rights reserved.
//

import UIKit

class SquareView: UIView {

    override func draw(_ rect: CGRect) {
        
//        let context = UIGraphicsGetCurrentContext()
//        context?.setLineWidth(4)
//        context?.setStrokeColor(UIColor.green.cgColor)
//        context?.move(to: CGPoint(x: 10, y: 0))
//        context?.addLine(to: CGPoint(x: frame.width - 10, y: 0))
//        context?.addQuadCurve(to: CGPoint(x: frame.width, y: 10), control: CGPoint(x: frame.width, y: 0))
//        context?.addLine(to: CGPoint(x: frame.width, y: frame.height - 10))
//        context?.addQuadCurve(to: CGPoint(x: frame.width - 10, y: frame.height), control: CGPoint(x: frame.width, y: frame.height))
//        context?.addLine(to: CGPoint(x: 10, y: frame.height))
//        context?.addQuadCurve(to: CGPoint(x: 0, y: frame.height - 10), control: CGPoint(x: 0, y: frame.height))
//        context?.addLine(to: CGPoint(x: 0, y: 10))
//        context?.addQuadCurve(to: CGPoint(x: 10, y: 0), control: CGPoint(x: 0, y: 0))
//        context?.strokePath()
        
        //MARK: Curvas de Bezier
        //Cada path puede ser representado para una solo figura -> mayor control
        let aPath = UIBezierPath()
        aPath.lineWidth = 4
        UIColor.green.set()
        aPath.move(to: CGPoint(x: 10, y: 0))
        aPath.addLine(to: CGPoint(x: frame.width - 10, y: 0))
        aPath.addQuadCurve(to: CGPoint(x: frame.width, y: 10), controlPoint: CGPoint(x: frame.width, y: 0))
        aPath.addLine(to: CGPoint(x: frame.width, y: frame.height - 10))
        aPath.addQuadCurve(to: CGPoint(x: frame.width - 10, y: frame.height), controlPoint: CGPoint(x: frame.width, y: frame.height))
        aPath.addLine(to: CGPoint(x: 10, y: frame.height))
        aPath.addQuadCurve(to: CGPoint(x: 0, y: frame.height - 10), controlPoint: CGPoint(x: 0, y: frame.height))
        aPath.addLine(to: CGPoint(x: 0, y: 10))
        aPath.addQuadCurve(to: CGPoint(x: 10, y: 0), controlPoint: CGPoint(x: 0, y: 0))
        aPath.stroke()
        
    }

}
