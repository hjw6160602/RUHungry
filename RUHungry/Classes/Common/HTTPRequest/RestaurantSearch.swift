//
//  RestaurantSearch.swift
//  RUHungry
//
//  Created by shoule on 15/9/8.
//  Copyright © 2015年 SaiDicaprio. All rights reserved.
//

import Foundation
import CoreLocation

let RestaurantSearchAddress     :String = Address + "/restaurants/"

class RestaurantSearch : BaseParam {
    /** 参数名           类型	           是否必须	 示例   描述*/
    var geo            :String = ""    //参考说明	 1,2   longitude和latitude用英文逗号分隔
    var restaurant_ids :String = ""    //参考说明	 1,2   饿了么餐厅ID列表，英文逗号分隔，最多100个
    var keyword        :String = ""	   //参考说明 麦当劳 搜索关键字
    var city_id        :Int    = 0     //参考说明	 1     饿了么城市ID 获取城市列表city-list
    
    var busy_level     :Int    = 0     //否	     0	   餐厅营业状态，默认为不过滤。具体参考：餐厅营业状态
    var flavor         :String = ""    //否	     中式   根据口味筛选餐厅，默认为不筛选。口味选项的获得参考 获取口味列表restaurant-flavor-list
    var invoice        :Int    = 0     //否	     0     是否支持发票，默认为不过滤。0为只选择不支持发票的，1为只选择支持发票的
    var payment        :String = ""	   //否	     1,2   餐厅支持的支付方式，参考 餐厅支付方式说明 若有多个则用英文逗号分隔
    var offset         :Int    = 0     //否	     10    位移，默认为0。如果传的是10，那么餐厅会从第11个开始返回。
    var limit          :Int    = 0     //否	     10    餐厅数量，默认为10，如果传的是20，那么会限制只返回20个餐厅。
    var order_by       :Int    = 0     //否       1
                                                       /**  排序选项，默认为1：
                                                        *   1: 默认排序（热门）
                                                        *   2: 评价星级由高到低
                                                        *   3: 起送价由低到高
                                                        *   4: 销量由高到底
                                                        *   5: 送餐速度由快到慢
                                                        */

    class func GETRequest(URL:String, delgate:responseDelegate){
        let Connection = SwiftConnection()
//        let latitude:CLLocationDegrees = 121.49576
//        let longitude:CLLocationDegrees = 31.265201
//        let location = CLLocation(latitude: latitude, longitude: longitude)
//        print(location)

        //GET方式发送异步请求
        Connection.GET(URL,delegate:delgate)
    }
}


