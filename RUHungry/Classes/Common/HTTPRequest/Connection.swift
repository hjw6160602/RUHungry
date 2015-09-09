//
//  Connection.swift
//  RUHungry
//
//  Created by shoule on 15/9/8.
//  Copyright © 2015年 SaiDicaprio. All rights reserved.
//

import Foundation

protocol responseDelegate {
    func onResponseResult(response:NSDictionary)
}

class SwiftConnection : NSObject, NSURLConnectionDataDelegate{
    var _delegate:responseDelegate?
    /**
     * 异步GET方法发送请求
     * @param  URL: GET请求的URL
     * @note   传入的URL为字符串
     */
    func GET(URL:String, delegate:responseDelegate){
        //(NSString *)strURL delegate:(id<responseDelegate>)responseDelegate;
        let url = NSURL(string: URL)
        let request = NSURLRequest(URL: url!)
        let connection = NSURLConnection(request: request, delegate: self)
        if (connection != nil){
            print("异步请求成功")
            _delegate = delegate
        }
    }
    
    /**
     * 异步POST方法发送请求
     * @param  URL       : POST请求URL
     * @param  HTTPBody  : POST请求HTTPBody
     * @note   传入的URL，HTTPBody均为字符串
     */
    func POST(URL:String, HTTPBody:String, delegate:responseDelegate){
        let url = NSURL(string: URL)
        let request = NSMutableURLRequest(URL: url!)
        let HTTPBodyData = HTTPBody.dataUsingEncoding(NSUTF8StringEncoding)
        request.HTTPBody = HTTPBodyData
//      将httpBody转为流 NSInputStream
//      let HTTPBodyStream = NSInputStream(data: HTTPBodyData!)
//      request.HTTPBodyStream = HTTPBodyStream

//      request.HTTPMethod = "POST"
//      request.valueForHTTPHeaderField("application/json;charset=UTF-8")
        
        let connection = NSURLConnection(request: request, delegate: self)
        if (connection != nil){
            print("异步请求成功")
            _delegate = delegate
        }
    }
    
    //MARK: -  NSURLConnectionDelegate回调
    func connection(connection: NSURLConnection, didReceiveResponse response: NSURLResponse){
        print("收到Response:\(response.MIMEType)")
    }
    
    func connection(connection: NSURLConnection, didReceiveData data: NSData){
        print("请求完成...")
        let ServerData = NSString (data: data, encoding: NSUTF8StringEncoding)!
        print("服务器返回数据为：\(ServerData)")
        JSONDecode(data)
    }

    //MARK: - /*---------自定义方法----------*/
    /**
    * JSON解码
    * @param  Data      : 传入的data数据
    * @note   换了姿势的异常抛出，日了狗
    */
    func JSONDecode(Data:NSData){
        let json:AnyObject?;
        do  {
            json = try NSJSONSerialization.JSONObjectWithData(Data, options: NSJSONReadingOptions.MutableContainers)
            let ListDic:NSDictionary = json as! NSDictionary
            _delegate!.onResponseResult(ListDic)
        }
        catch {
            print(error)
        }
    }
}