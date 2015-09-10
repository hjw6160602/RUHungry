//
//  BaseResult.swift
//  RUHungry
//
//  Created by shoule on 15/9/8.
//  Copyright © 2015年 SaiDicaprio. All rights reserved.
//

import UIKit

class BaseResult: NSObject {
    var code        :Int
    var message     :String
    var data        :NSDictionary
    var request_id  :String
    
    init(dictionary:NSDictionary){
        self.code       = dictionary.objectForKey("code")       as! Int
        self.message    = dictionary.objectForKey("message")    as! String
        self.data       = dictionary.objectForKey("data")       as! NSDictionary
        self.request_id = dictionary.objectForKey("request_id") as! String
    }
}



//    "message": "system param error", "code": 1002, "data": null, "request_id": "7963a58d8fdb4793954301347bccafaf"
    