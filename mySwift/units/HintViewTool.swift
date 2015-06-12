//
//  HintViewTool.swift
//  mySwift
//
//  Created by 李永强 on 15/6/12.
//  Copyright (c) 2015年 tongbaotu. All rights reserved.
//

import UIKit

class HintViewTool {
    class func alertErrorMessage(message:String ) {

        let view = UIApplication.sharedApplication().keyWindow

        let hudHint = MBProgressHUD.showHUDAddedTo(view , animated: true)
        hudHint.mode = MBProgressHUDModeText
        hudHint.labelText =  message
        hudHint.yOffset = -100
        hudHint.hide(true, afterDelay: 2)
        


    }
   
}
