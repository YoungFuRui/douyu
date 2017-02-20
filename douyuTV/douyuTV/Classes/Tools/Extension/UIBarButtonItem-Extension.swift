//
//  UIBarButtonItem-Extension.swift
//  douyuTV
//
//  Created by free on 17/2/19.
//  Copyright © 2017年 free. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    /*
    class func createItem(imageName : String, highImageName : String, size : CGSize) -> UIBarButtonItem {
        let btn = UIButton()
        
        btn.setImage(UIImage(named: imageName), for: .normal)
        btn.setImage(UIImage(named: highImageName), for: .highlighted)
        btn.frame = CGRect(origin: CGPoint(), size: size)
        
        return UIBarButtonItem(customView: btn)
    }
    */
    
    // 便利构造函数：1> convenience开头 2> 在构造函数中必须明确调用一个设计的构造函数(self)
    convenience init(imageName : String, highImageName : String = "", size : CGSize = CGSize(width: 0, height: 0)) {
        // 创建UIButton
        let btn = UIButton()
        
        // 设置btn的图片
        btn.setImage(UIImage(named: imageName), for: .normal)
        if highImageName != "" {
            btn.setImage(UIImage(named: highImageName), for: .highlighted)
        }
        // 设置btn的尺寸
        if size == CGSize(width: 0, height: 0) {
            btn.sizeToFit()
        } else {
            btn.frame = CGRect(origin: CGPoint(), size: size)
        }
        
        // 创建UIBarButtonItem
        self.init(customView : btn)
    }
}
