//
//  NavigationController.swift
//  RUHungry
//
//  Created by shoule on 15/9/7.
//  Copyright © 2015年 SaiDicaprio. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {

//    override class func initialize(){
//        //设置整个项目所有item的主题样式
//        let item = UIBarButtonItem.appearance()
//        
//        // 设置普通状态
//        // key：NS****AttributeName
//        let textAttrs = NSMutableDictionary()
//        textAttrs[NSFontAttributeName] = UIFont.systemFontOfSize(15)
//        //这里第一个参数为什么不是字典了？
//        item.setTitleTextAttributes(nil, forState: UIControlState.Normal)
//        
//        // 设置不可用状态
//        // 设置导航样式
//        let NaviBar = UINavigationBar.appearance()
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //设置标题颜色
        let navigationTitleAttribute = NSDictionary(object: UIColor.whiteColor(),forKey: NSForegroundColorAttributeName)
        navigationBar.titleTextAttributes = navigationTitleAttribute as? [String : AnyObject]
        
        navigationBar.barTintColor = HJW_GLOBLE_COLOR
        
    }
}
