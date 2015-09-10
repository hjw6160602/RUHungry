//
//  Restaurant.swift
//  RUHungry
//
//  Created by shoule on 15/9/9.
//  Copyright © 2015年 SaiDicaprio. All rights reserved.
//

import UIKit

class Restaurant: NSObject {
    /** 餐厅地址 */
    var address_text            : String
    /** 代理费 */
    var agent_fee               : Int
    /** 配送花费 */
    var deliver_spent           : Int
    /** 餐厅描述 */
    var description_            : String
    /** 口味 */
    var flavors                 : String
    /** 发票*/
    var invoice                 : Int
    /** 最小发票数量 */
    var invoice_min_amount      : Int
    /** 开放时间表 */
    var open_time_bitmap        : String
    /** 预定时间表 */
    var book_time_bitmap        : String
    /** 是否可预订 */
    var is_bookable             : Bool
    /** 所有状态 */
    var total_status            : Int
    /** 服务时间 */
    var serving_time            : NSArray
    /** 配送时间 */
    var deliver_times           : NSArray
    /** 配送数量 */
    var deliver_amount          : Int
    /** 忙碌级别 */
    var busy_level              : Int
    /** 是否开放状态 */
    var is_open                 : Bool
    /** 餐厅纬度 */
    var latitude                : String
    /** 餐厅经度 */
    var longitude               : String
    /** 预留手机号 */
    var mobile                  : String
    /** */
    var no_agent_fee_total      : Int
    /** */
    var num_ratings             : NSArray
    /** */
    var online_payment          : Int
    /** 订单状态 */
    var order_mode              : Int
    /** */
    var phone_list              : NSArray?
    /** */
    var promotion_info          : String
    /** 餐厅id */
    var restaurant_id           : Int
    /** 餐厅名称 */
    var restaurant_name         : String
    /** 图片URL */
    var image_url               : String
    /** 当前美食人气 */
    var recent_food_popularity  : Int
    
    init (dictionary:NSDictionary){
        self.address_text           = dictionary.objectForKey("address_text")           as! String
        self.agent_fee              = dictionary.objectForKey("agent_fee")              as! Int
        self.deliver_spent          = dictionary.objectForKey("deliver_spent")          as! Int
        self.description_           = dictionary.objectForKey("description")            as! String
        self.flavors                = dictionary.objectForKey("flavors")                as! String
        self.invoice                = dictionary.objectForKey("invoice")                as! Int
        self.invoice_min_amount     = dictionary.objectForKey("invoice_min_amount")     as! Int
        self.open_time_bitmap       = dictionary.objectForKey("open_time_bitmap")       as! String
        self.book_time_bitmap       = dictionary.objectForKey("book_time_bitmap")       as! String
        self.is_bookable            = dictionary.objectForKey("is_bookable")            as! Bool
        self.total_status           = dictionary.objectForKey("total_status")           as! Int
        self.serving_time           = dictionary.objectForKey("serving_time")           as! NSArray
        self.deliver_times          = dictionary.objectForKey("deliver_times")          as! NSArray
        self.deliver_amount         = dictionary.objectForKey("deliver_amount")         as! Int
        self.busy_level             = dictionary.objectForKey("busy_level")             as! Int
        self.is_open                = dictionary.objectForKey("is_open")                as! Bool
        self.latitude               = dictionary.objectForKey("latitude")               as! String
        self.longitude              = dictionary.objectForKey("longitude")              as! String
        self.mobile                 = dictionary.objectForKey("mobile")                 as! String
        self.no_agent_fee_total     = dictionary.objectForKey("no_agent_fee_total")     as! Int
        self.num_ratings            = dictionary.objectForKey("num_ratings")            as! NSArray
        self.online_payment         = dictionary.objectForKey("online_payment")         as! Int
        self.order_mode             = dictionary.objectForKey("order_mode")             as! Int
        self.phone_list             = dictionary.objectForKey("phone_list")             as? NSArray
        self.promotion_info         = dictionary.objectForKey("promotion_info")         as! String
        self.restaurant_id          = dictionary.objectForKey("restaurant_id")          as! Int
        self.restaurant_name        = dictionary.objectForKey("restaurant_name")        as! String
        self.image_url              = dictionary.objectForKey("image_url")              as! String
        self.recent_food_popularity = dictionary.objectForKey("recent_food_popularity") as! Int
    }
}
