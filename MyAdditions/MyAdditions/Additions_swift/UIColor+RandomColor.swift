//
//  UIColor+RandomColor.swift
//  MyAdditions
//
//  Created by FFine on 2018/8/24.
//  Copyright © 2018年 FFine. All rights reserved.
//

import Foundation

extension UIColor{
    class func randomColor() -> UIColor {
        return UIColor(red: CGFloat(arc4random_uniform(256))/256, green: CGFloat(arc4random_uniform(256))/256, blue: CGFloat(arc4random_uniform(256))/256, alpha: 1.0)
    }
}
