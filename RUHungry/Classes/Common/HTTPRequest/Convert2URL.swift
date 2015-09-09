//
//  Convert2URL.swift
//  RUHungry
//
//  Created by shoule on 15/9/8.
//  Copyright © 2015年 SaiDicaprio. All rights reserved.
//

import UIKit

/**  签名计算规则
  *  1. 对参数进行排序得到 字符串A
  *  2. 计算 字符串B
  *  3. 对"字符串B"用UTF-8 Encode之后计算HEX值字符串（用HEX Encode），得到"字符串C"
  *  4. 计算签名
  *  5. 拼接请求URL
  */
class Convert2URL: NSObject {
    let consumer_key    : String = "7284397484"
    let consumer_secret : String = "4d31ba58fd73c71db697ab5e4946d52d"
    var URL             : String = ""
    var sig             : String = ""
    var firstAppend     : Bool   = true
    
    func convertToURL(sourceURL:String, sourceDic:NSDictionary){
        URL = sourceURL
//        let sourceDic = Param.keyValues()
        /**
        * 1.对参数进行排序得到 字符串A
        *
        * consumer_key=7284397484&timestamp=1374908054 将所有参数（sig除外）按照参数名的字母顺序排序，并用 & 连接:
        *
        * @note 计算 sig 时需要注意的以下几点：
        *       1.不需要计算的参数（如图片接口的图片内容参数 file）之外，其他参数都需要包含在字符串 A 中
        *       2.所有接口中的请求方法 GET / POST / PUT / DELETE 的请求参数在计算 sig 前需要进行 utf-8 编码，然后urlencode
        */
        var strA = ""
        let array = NSMutableArray()
        for (key, value) in sourceDic {
            let str = "\(key)=\(value)"
            array.addObject(str)
        }
        var ParamArray:[String] = array.copy() as! Array
        // 冒泡排序
        for var i = 0; i < array.count - 1; ++i {
            for var j = 0; j < array.count - 1 - i; ++j{
                if ParamArray[j] > ParamArray[j + 1] {
                    let temp = ParamArray[j + 1]
                    ParamArray[j + 1] = ParamArray[j]
                    ParamArray[j] = temp
                }
            }
        }
        for param in ParamArray{
            if firstAppend{
                strA += param
                firstAppend = false
            }
            else{
                strA += "&\(param)"
            }
        }
        print("字符串A : \(strA)")
        
        //2.计算 字符串B 按照请求url + ? + 字符串A + consumer_secret的顺序进行连接，得到 字符串B
        let strB = URL + "?" + strA + consumer_secret
        print("字符串B : \(strB)")
        
        // 3. 对"字符串B"用UTF-8 Encode之后计算HEX值字符串（用HEX Encode），得到"字符串C"
        let UTF8Str = strB.stringByAddingPercentEscapesUsingEncoding(NSUTF8StringEncoding)
        let strC = HJWCategory.hexStringFromString(UTF8Str)
        print("字符串C : \(strC)")
        
        // 4. 对 字符串C 计算SHA1哈希，得到签名:sig
        let sig = HJWCategory.SHA1(strC!)
        print("sig签名 : \(sig)")
        
        // 5. 将得到的签名赋给sig作为HTTP请求的URL参数:
        //接口调用时的时间戳，即当前时间戳 （时间戳：当前距离Epoch（1970年1月1日） 以秒计算的时间，即unix-timestamp）

        let timestamp = sourceDic.objectForKey("timestamp")!
        
        URL += "?consumer_key=\(consumer_key)&sig=\(sig)&timestamp=\(timestamp)"
        print("最终URL : \(URL)")
    }
}



//extension NSString {
//    func SHA1() -> NSString {
//        var cstr = self.cStringUsingEncoding(NSUTF8StringEncoding)
//        let data = NSData(bytes: &cstr, length: self.length)
//        
//        var digest = [UInt8](count:Int(CC_SHA1_DIGEST_LENGTH), repeatedValue: 0)
//        CC_SHA1(data.bytes, CC_LONG(data.length), &digest)
//        
//        let SHA1_DIGEST_LENGTH = 20
//        
//        let output = NSMutableString(capacity: SHA1_DIGEST_LENGTH * 2)
//        
//        for var index = 0; index < SHA1_DIGEST_LENGTH; ++index {
//            output.appendFormat("%02x", digest[index])
//        }
//        return output
//    }
//}

