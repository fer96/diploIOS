//
//  CounterView.swift
//  WaterCounter
//
//  Created by DelaRosa Fernando on 13/10/18.
//  Copyright © 2018 DeLaRosa Fernando. All rights reserved.
//

import UIKit

@IBDesignable
class CounterView: UIView {

    @IBInspectable var counterColor: UIColor = .orange
    @IBInspectable var counter: Int = 1{
        didSet{
            setNeedsDisplay()
        }
    }
    
    private struct Constant{
        static let numberOfGlasses = 8
        static let minGlasses = 0
    }
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        let center = CGPoint(x: bounds.width / 2, y: bounds.height / 2)
        let radius: CGFloat = max(bounds.width, bounds.height)
        let startAngle: CGFloat = 3 * .pi / 4
        let endAngle: CGFloat = .pi / 4
        
        let path = UIBezierPath(arcCenter: center, radius: radius/2 - 76/2, startAngle: startAngle, endAngle: endAngle, clockwise: true)
        path.lineWidth = 76
        counterColor.setStroke()
        path.stroke()
        
        let angleifference: CGFloat = 2 * .pi - startAngle + endAngle
        let arcLengthPerGlass = angleifference / CGFloat(Constant.numberOfGlasses)
        let outLineAngle = arcLengthPerGlass * CGFloat(counter) + startAngle
        
        let outLinePath = UIBezierPath(arcCenter: center, radius: bounds.width/2 - 4, startAngle: startAngle, endAngle: outLineAngle, clockwise: true)
        outLinePath.addArc(withCenter: center, radius: bounds.width/2 - 76 + 4, startAngle: outLineAngle, endAngle: startAngle, clockwise: false)
        outLinePath.close()
        outLinePath.lineWidth = 5
        UIColor.blue.setStroke()
        outLinePath.stroke()
    }
    

}
