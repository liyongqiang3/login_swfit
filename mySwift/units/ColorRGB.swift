//
//  ColorRGB.swift
//  mySwift
//
//  Created by 李永强 on 15/6/11.
//  Copyright (c) 2015年 tongbaotu. All rights reserved.
//

import UIKit

class ColorRGB {

    class func rgb(rgbValue:UInt)->UIColor{
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
   
}
