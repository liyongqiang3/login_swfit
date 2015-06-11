//
//  THighlightButton.swift
//  mySwift
//
//  Created by 李永强 on 15/6/11.
//  Copyright (c) 2015年 tongbaotu. All rights reserved.
//

import UIKit

class THighlightButton: UIButton {
    private var  highlightColor : UIColor?
    private var  myBackgroundColor : UIColor?
    private var  loadingView : UIActivityIndicatorView?

    override  init(frame: CGRect) {
        super.init(frame:frame)
        self.myBackgroundColor = ColorRGB.rgb(0xf2bd7d)
        self.highlightColor = ColorRGB.rgb(0xd8c18a)
        self.layer.borderWidth = 0.5
        self.layer.borderColor =  ColorRGB.rgb(0xd1d1d1).CGColor

    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override  var  highlighted :  Bool{
        didSet{
            if highlighted {
                self.backgroundColor = highlightColor

            } else {
                self.backgroundColor = myBackgroundColor
            }
        }
    }

}
