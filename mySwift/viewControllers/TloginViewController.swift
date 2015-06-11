//
//  TloginViewController.swift
//  mySwift
//
//  Created by 李永强 on 15/6/8.
//  Copyright (c) 2015年 tongbaotu. All rights reserved.
//

import UIKit

class TloginViewController: BaseViewController {

    internal  var   logoImageView : UIImageView?
    private var  userNameText : TTextField?
    private var  passwordText : TTextField?
    internal var   loginButton : THighlightButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
    func initView(){
        var   y :CGFloat = top_const_height
        y +=  view_padding_y
        logoImageView = UIImageView(frame:CGRectMake((screen_wdith - 88) / 2 ,  y,  88.0,  88.0))
        logoImageView?.contentMode = UIViewContentMode.ScaleAspectFit;
        logoImageView?.image = UIImage(named: "applogo.png")
        y += view_padding_y + 88.0
        userNameText = TTextField(frame: CGRectMake(view_padding_x, y, button_wdith, button_height))
        userNameText?.placeholder = "请填写您的手机号或者账号"
        y += view_padding_y + button_height
        passwordText = TTextField(frame: CGRectMake(view_padding_x, y, button_wdith, button_height))
        passwordText?.placeholder = "请填写您的密码"
        passwordText?.secureTextEntry = true
        if (passwordText != nil){
            passwordText?.placeholder = "请填写您的密码"
        }
        y += view_padding_y + button_height
        loginButton = THighlightButton(frame: CGRectMake(view_padding_x, y, button_wdith, button_height))
        loginButton?.backgroundColor = ColorRGB.rgb(0xf2bd7d)
        loginButton?.setTitle("登陆", forState:UIControlState.Normal)
        self.view.addSubview(logoImageView!)
        self.view.addSubview(userNameText!)
        self.view.addSubview(passwordText!)
        self.view.addSubview(loginButton!)
        self.view.backgroundColor = self.ColorFromRGB(0xf0eff4)
    }

    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
}
