//
//  Restaurant.swift
//  RUHungry
//
//  Created by shoule on 15/9/9.
//  Copyright © 2015年 SaiDicaprio. All rights reserved.
//

import UIKit

class Restaurant: NSObject {
    var address_text            : String = ""
    var agent_fee               : String = ""
    var deliver_spent           : String = ""
    var description_            : String = ""
    var flavors                 : String = ""
    var invoice                 : String = ""
    var invoice_min_amount      : String = ""
    var open_time_bitmap        : String = ""
    var book_time_bitmap        : String = ""
    var is_bookable             : String = ""
    var total_status            : String = ""
    var serving_time            : String = ""
    var deliver_times           : String = ""
    var deliver_amount          : String = ""
    var busy_level              : String = ""
    var is_open                 : String = ""
    var latitude                : String = ""
    var longitude               : String = ""
    var mobile                  : String = ""
    var no_agent_fee_total      : String = ""
    
    var num_ratings             : String = ""
    var online_payment          : String = ""
    var order_mode              : String = ""
    var phone_list              : String = ""
    var promotion_info          : String = ""
    var restaurant_id           : String = ""
    var restaurant_name         : String = ""
    var image_url               : String = ""
    var recent_food_popularity  : String = ""
    
    init (dictionary:NSDictionary){
        self.address_text           = dictionary.objectForKey("address_text")           as! String
        self.agent_fee              = dictionary.objectForKey("agent_fee")              as! String
        self.deliver_spent          = dictionary.objectForKey("deliver_spent")          as! String
        self.description_           = dictionary.objectForKey("description")            as! String
        self.flavors                = dictionary.objectForKey("flavors")                as! String
        self.invoice                = dictionary.objectForKey("invoice")                as! String
        self.invoice_min_amount     = dictionary.objectForKey("invoice_min_amount")     as! String
        self.open_time_bitmap       = dictionary.objectForKey("open_time_bitmap")       as! String
        self.book_time_bitmap       = dictionary.objectForKey("book_time_bitmap")       as! String
        self.is_bookable            = dictionary.objectForKey("is_bookable")            as! String
        self.total_status           = dictionary.objectForKey("total_status")           as! String
        self.serving_time           = dictionary.objectForKey("serving_time")           as! String
        self.deliver_times          = dictionary.objectForKey("deliver_times")          as! String
        self.deliver_amount         = dictionary.objectForKey("deliver_amount")         as! String
        self.busy_level             = dictionary.objectForKey("busy_level")             as! String
        self.is_open                = dictionary.objectForKey("is_open")                as! String
        self.latitude               = dictionary.objectForKey("latitude")               as! String
        self.longitude              = dictionary.objectForKey("longitude")              as! String
        self.mobile                 = dictionary.objectForKey("mobile")                 as! String
        self.no_agent_fee_total     = dictionary.objectForKey("no_agent_fee_total")     as! String
        self.num_ratings            = dictionary.objectForKey("num_ratings")            as! String
        self.online_payment         = dictionary.objectForKey("online_payment")         as! String
        self.order_mode             = dictionary.objectForKey("order_mode")             as! String
        self.phone_list             = dictionary.objectForKey("phone_list")             as! String
        self.promotion_info         = dictionary.objectForKey("promotion_info")         as! String
        self.restaurant_id          = dictionary.objectForKey("restaurant_id")          as! String
        self.restaurant_name        = dictionary.objectForKey("restaurant_name")        as! String
        self.image_url              = dictionary.objectForKey("image_url")              as! String
        self.recent_food_popularity = dictionary.objectForKey("recent_food_popularity") as! String
    }
    
}
