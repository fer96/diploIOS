//
//  ActionButton.swift
//  WaterCounter
//
//  Created by DelaRosa Fernando on 13/10/18.
//  Copyright © 2018 DeLaRosa Fernando. All rights reserved.
//

import UIKit

//Renderiza en el storyboard la funcion draw(_ rect)
//Ya que consume muchos registros, solo es util usar cuando le piensa depurar codigo
@IBDesignable

class ActionButton: UIButton {
    
    //Agrega un campo en el storyboard para identificar los botones, si utilizar tags
    @IBInspectable var isAddButton: Bool = true
    @IBInspectable var fieldColor: UIColor = .darkGray
    
    private var halfWidth : CGFloat{
        return bounds.width / 2
    }
    private var halfHeight : CGFloat{
        return bounds.height / 2
    }
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(ovalIn: rect)
        fieldColor.setFill()
        path.fill()
        
        let plusWidth: CGFloat = min(bounds.width, bounds.height) * 0.6
        let halfPlusWidth = plusWidth / 2
        let plusPath = UIBezierPath()
        plusPath.lineWidth = 5.0
        plusPath.move(to: CGPoint(x: halfWidth - halfPlusWidth, y: halfHeight))
        plusPath.addLine(to: CGPoint(x: halfWidth + halfPlusWidth, y: halfHeight))
        if isAddButton{
            plusPath.move(to: CGPoint(x: halfWidth, y: halfHeight - halfPlusWidth))
            plusPath.addLine(to: CGPoint(x: halfWidth, y: halfHeight + halfPlusWidth))
        }
        UIColor.white.setStroke()
        plusPath.stroke()
    }

}
