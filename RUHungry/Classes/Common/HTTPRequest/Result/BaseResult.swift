//
//  BaseResult.swift
//  RUHungry
//
//  Created by shoule on 15/9/8.
//  Copyright © 2015年 SaiDicaprio. All rights reserved.
//

import UIKit

class BaseResult: NSObject {
    var code        :Int          = 0
    var message     :NSDictionary?
    var data        :String       = ""
    var request_id  :String       = ""
}
//    "message": "system param error", "code": 1002, "data": null, "request_id": "7963a58d8fdb4793954301347bccafaf"
    