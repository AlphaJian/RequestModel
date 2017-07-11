//
//  RequestModel.swift
//  MyApiTest
//
//  Created by Zhang, Ken Y. -ND on 7/10/17.
//  Copyright © 2017 Zhang, Ken Y. -ND. All rights reserved.
//

import UIKit

enum HttpMethod: Int
{
    case get, post, patch, put
}

class RequestModel: NSObject {

    var requestUrl : String?
    var requestMethod: HttpMethod?
    var requestParams: [String : String]?
    
    override init() {
        
    }
    
    init(url: String, method: HttpMethod, params: [String : String])
    {
        super.init()
        requestUrl = url
        requestMethod = method
        requestParams = params
        
        self.translateParam()
    }
    
    private func translateParam(){
        if requestMethod == .get
        {
            var strParam : String = ""
            for paramKey in requestParams!.keys
            {
                strParam = strParam + paramKey + "=" + (requestParams?[paramKey])! + "&"
            }
            strParam = strParam.substring(to: strParam.index(strParam.endIndex, offsetBy: -1))
            
            requestUrl = requestUrl! + "?" + strParam
        }
    }
    
}
