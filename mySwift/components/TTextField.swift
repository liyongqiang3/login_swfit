//
//  TTextField.swift
//  mySwift
//
//  Created by 李永强 on 15/6/8.
//  Copyright (c) 2015年 tongbaotu. All rights reserved.
//

import UIKit

class TTextField: UITextField {
    override  init(frame:CGRect) {
        super.init(frame:frame)
        self.clearButtonMode = UITextFieldViewMode.Never
        self.textColor = UIColor.blackColor()
        self.clearsOnBeginEditing = false
        self.adjustsFontSizeToFitWidth = true
        self.autocapitalizationType = UITextAutocapitalizationType.None
        self.leftView = UIView(frame: CGRectMake(0, 0, 10, 14))
        self.leftViewMode = UITextFieldViewMode.Always
        self.layer.borderWidth = 0.5
        self.layer.borderColor = ColorRGB.rgb(0xd1d1d1).CGColor
        self.backgroundColor = UIColor.whiteColor()
        self.contentVerticalAlignment = UIControlContentVerticalAlignment.Center
        self.returnKeyType = UIReturnKeyType.Join
//        self.setValue(ColorRGB.rgb(0x8a8a8a),  "_placeholderLabel.textColor")
        self.attributedPlaceholder =  NSAttributedString(string: "placeholder", attributes:[NSForegroundColorAttributeName : ColorRGB.rgb(0x8a8a8a)])
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func placeholderRectForBounds(bounds: CGRect) -> CGRect {

        return CGRectMake(bounds.origin.x + 10 , bounds.origin.y  , bounds.size.width - 10.0, bounds.size.height)

    }
    //控制编辑文本的位置
    override func editingRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectInset( bounds , 10 , 0 );
    }

//    override func drawPlaceholderInRect(rect: CGRect) {
//
//        self.placeholder
//    }

}
