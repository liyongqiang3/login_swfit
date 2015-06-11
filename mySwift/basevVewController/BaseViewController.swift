//
//  BaseViewController.swift
//  mySwift
//
//  Created by 李永强 on 15/6/11.
//  Copyright (c) 2015年 tongbaotu. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    internal let top_const_height :CGFloat = 64.0
    internal let view_padding_x  :CGFloat = 20
    internal let view_padding_y  :CGFloat = 20
    internal let  screen_wdith  :CGFloat = UIScreen.mainScreen().bounds.size.width
    internal let  screen_height :CGFloat = UIScreen.mainScreen().bounds.size.height
    internal let  button_height :CGFloat = 40.0
    internal let  button_wdith : CGFloat = ( UIScreen.mainScreen().bounds.size.width - 20 * 2)
    
    


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func ColorFromRGB(rgbValue:UInt)->UIColor{
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )

    }

}
