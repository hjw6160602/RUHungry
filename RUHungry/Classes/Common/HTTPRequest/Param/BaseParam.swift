//
//  BaseParam.swift
//  RUHungry
//
//  Created by shoule on 15/9/9.
//  Copyright © 2015年 SaiDicaprio. All rights reserved.
//

import UIKit

class BaseParam: NSObject {
    //进行接口调用时的时间戳，即当前时间戳 （时间戳：当前距离Epoch（1970年1月1日） 以秒计算的时间，即unix-timestamp）
    var timestamp    : String  = "\(Int(NSDate().timeIntervalSince1970))"
    //eleme分配给APP的consumer_key
    var consumer_key : String  = "4d31ba58fd73c71db697ab5e4946d52d"
    
}
