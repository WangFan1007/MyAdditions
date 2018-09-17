//
//  WFProgressView.swift
//  MyAdditions
//
//  Created by FFine on 2018/9/17.
//  Copyright © 2018年 FFine. All rights reserved.
//

import UIKit

class WFProgressView: UIButton {
    var _progress = 0.0
    
    override func draw(_ rect: CGRect) {
//        super.draw(rect)
        let radius = min(rect.width,rect.height) / 2 - 2;
        
        let path = UIBezierPath(arcCenter: CGPoint(x: rect.width/2, y: rect.height/2), radius: radius, startAngle: CGFloat(Double.pi) , endAngle: CGFloat(Double.pi*2 * _progress + Double.pi), clockwise: true);
        path.lineWidth = 4;
        path.lineCapStyle = .round
        UIColor.cyan.set()
        path.stroke()
    }
    
    var progress: Double {
        get {
            return _progress
        }
        set {
            _progress = newValue
            setNeedsLayout()
        }
    }

}
