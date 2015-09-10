//
//  Const.swift
//  RUHungry
//
//  Created by shoule on 15/9/7.
//  Copyright © 2015年 SaiDicaprio. All rights reserved.
//

import Foundation
import UIKit

// MARK: - 功能性函数
//74 147 238
//53 143 230
//61 154 232

let HJW_GLOBLE_COLOR = HJWColor (20, 130, 230)
//随机色
let HJW_Random_Color = HJWColor (Int(arc4random_uniform(256)), Int(arc4random_uniform(256)), Int(arc4random_uniform(256)))

func HJWColor(R:Int, _ G:Int, _ B:Int) -> UIColor{
    let red   :CGFloat = CGFloat(R)/255.0
    let green :CGFloat = CGFloat(G)/255.0
    let blue  :CGFloat = CGFloat(B)/255.0
    return UIColor(red: red, green: green, blue: blue, alpha: 1)
}

// MARK: - 宏
/** 屏幕宽高 */
let SCREEN_HEIGHT = UIScreen.mainScreen().bounds.height
let SCREEN_WIDTH  = UIScreen.mainScreen().bounds.width

/** 全局单例 */
//let SINGLE        = Single()

/** 全局单例 [NSUserDefaults standardUserDefaults] */
let USER_DEFAULT  = NSUserDefaults.standardUserDefaults()
/** 通知中心 */
let NOTI_CENTER   = NSNotificationCenter.defaultCenter()
/** KeyWindow [UIApplication sharedApplication].keyWindow */
let KEY_WINDOW    = UIApplication.sharedApplication().keyWindow
/** 沙盒缓存路径 */
let DOC_PATH      = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)
/** Cell复用标识 */
let CELL          = "Cell"
/** API固定地址 */
let Address       = "http://openapi.ele.me/v2"
/** consumer_key */
let consumer_key    : String = "7284397484"
/** consumer_secret */
let consumer_secret : String = "4d31ba58fd73c71db697ab5e4946d52d"

let serverStr       : String = "{\"code\":200,\"data\":{\"restaurants\":[{\"address_text\":\"asdasda333d\",\"agent_fee\":0,\"deliver_spent\":0,\"description\":\"hhhhhhssh\",\"flavors\":\"\",\"invoice\":0,\"invoice_min_amount\":0,\"open_time_bitmap\":\"111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\",\"book_time_bitmap\":\"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100100100100100100100100100100100100100100100100100100100100100100100100100100100100100100100100100100100100100100100100100100100100100100100100000000000000\",\"is_bookable\":1,\"total_status\":1,\"serving_time\":[[\"08:00:00-23:00:00\"],[\"01:00:00-03:00:00\"]],\"deliver_times\":[\"19:00:00\",\"19:30:00\"],\"deliver_amount\":20,\"busy_level\":1,\"is_open\":false,\"is_premium\":0,\"latitude\":\"0\",\"longitude\":\"0\",\"mobile\":\"13066611111\",\"no_agent_fee_total\":0,\"num_ratings\":[0,0,0,0,0],\"online_payment\":0,\"order_mode\":1,\"phone_list\":null,\"promotion_info\":\"\",\"restaurant_id\":51235,\"restaurant_name\":\"pppppp\",\"image_url\":\"http://www.ele.me/demo.jpg\",\"recent_food_popularity\":123123},{\"address_text\":\"智慧园\",\"agent_fee\":7,\"deliver_spent\":0,\"description\":\"\",\"flavors\":\"中式,烧烤,甜点,汉堡\",\"invoice\":0,\"invoice_min_amount\":0,\"open_time_bitmap\":\"111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\",\"book_time_bitmap\":\"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100100100100100100100100100100100100100100100100100100100100100100100100100100100100100100100100100100100100100100100100100100100100100100100100000000000000\",\"is_bookable\":1,\"total_status\":1,\"serving_time\":[[\"08:00:00-23:00:00\"],[\"01:00:00-03:00:00\"]],\"deliver_times\":[\"19:00:00\",\"19:30:00\"],\"deliver_amount\":20,\"busy_level\":1,\"is_open\":false,\"is_premium\":0,\"latitude\":\"31.106063\",\"longitude\":\"121.370537\",\"mobile\":\"15201713912\",\"no_agent_fee_total\":0,\"num_ratings\":[39,30,-61,-121,2929],\"online_payment\":1,\"order_mode\":9,\"phone_list\":[\"54744537\"],\"promotion_info\":\"\",\"restaurant_id\":38,\"restaurant_name\":\"格来美餐厅\",\"image_url\":\"http://www.ele.me/demo.jpg\",\"recent_food_popularity\":123123}]},\"message\":\"ok\",\"request_id\":\"115bc4a55e3c4e9eaf3f1a111a3e7271\"}"