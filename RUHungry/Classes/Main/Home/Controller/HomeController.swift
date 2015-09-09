//
//  HomeController.swift
//  RUHungry
//
//  Created by shoule on 15/9/7.
//  Copyright © 2015年 SaiDicaprio. All rights reserved.
//

import UIKit

class HomeController: UITableViewController,responseDelegate {
    
    var ListDic :NSDictionary  = NSDictionary()
    let restaurant:Restaurant = Restaurant()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        RestaurantSearchRequest()
    }
    
    func RestaurantSearchRequest(){
        let timestamp = Int(NSDate().timeIntervalSince1970)
        let RSParam = ["consumer_key":"\(consumer_key)","geo":"121.49576,31.265201", "timestamp": "\(timestamp)"]
        
//      let RSParam = RestaurantSearch()
//      RSParam.geo = "121.49576,31.265201"
        
        let Convert = Convert2URL()
        Convert.convertToURL(RestaurantSearchAddress,sourceDic:RSParam)
        
        //let URL = Convert.URL
        //RestaurantSearch.GETRequest(URL, delgate: self)
        
        let ServerData = serverStr.dataUsingEncoding(NSUTF8StringEncoding)
        let json:AnyObject?;
        do  {
            json = try NSJSONSerialization.JSONObjectWithData(ServerData!, options: NSJSONReadingOptions.MutableContainers)
            ListDic = json as! NSDictionary
            print(ListDic)
        }
        catch {
            print(error)
        }
        print(ListDic.count)
        if ListDic.count>0 {
            
            
        }
    }
    
    //MARK: - GET请求回调
    func onResponseResult(response: NSDictionary) {
        let message = response.objectForKey("message") as! String
        let code = response.objectForKey("code") as! Int
        print("message:\(message)\ncode:\(code)")
    }
}
