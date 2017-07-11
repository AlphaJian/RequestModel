//
//  NetworkCenter.swift
//  MyApiTest
//
//  Created by Zhang, Ken Y. -ND on 7/11/17.
//  Copyright © 2017 Zhang, Ken Y. -ND. All rights reserved.
//

import UIKit
import Alamofire

typealias ReturnBlock = (AnyObject) -> Void

let kApiKey = "2171a0806543e5db6e9b4cec29985e1a"
let kApiUrl = "http://v.juhe.cn/toutiao/index"

class NetworkCenter: NSObject {
    
    private class func reqeustData(requestModel: RequestModel, successHandler: ReturnBlock, errorhandler: ReturnBlock){
        
        var alaMethod : HTTPMethod
        switch requestModel.requestMethod!
        {
            case .post:
                alaMethod = .post
            case .put:
                alaMethod = .put
            default:
                alaMethod = .get
        }
        
        Alamofire.request(requestModel.requestUrl!, method: alaMethod, parameters: requestModel.requestParams).responseJSON { (response) in
            print("Request: \(String(describing: response.request))")   // original url request
            print("Response: \(String(describing: response.response))") // http url response
            print("Result: \(response.result)")
            
    
            let dic = response.result.value as! NSDictionary
            print(dic["result"])
        }
    }
    
    class func requestNews(type: String)
    {
        let newReqeust = RequestModel(url: kApiUrl, method: .get, params: ["type": type, "key": kApiKey])
        reqeustData(requestModel: newReqeust, successHandler: { (obj) in
            print("------")
        }) { (err) in
            print(err)
        }
    }
    
}
