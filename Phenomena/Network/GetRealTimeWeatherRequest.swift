//
//  GetRealTimeWeatherRequest.swift
//  Phenomena
//
//  Created by toedwy on 2018/2/2.
//  Copyright © 2018年 Zzz Studio. All rights reserved.
//

import Foundation
import Alamofire
import RealmSwift
import AlamofireObjectMapper

let apiKey = "H9XapP=AcedlI-nY"
let url = "https://api.caiyunapp.com/v2/\(apiKey)/121.6544,25.1552/realtime.json"

class GetRealTimeWeatherRequest {
    
    class func getRealTimeWeather(_ location: String, completionHandler: @escaping (_ result: Any?) -> Void) {
        Alamofire.request(url).responseObject { (response: DataResponse<WeatherRealTime>) in
            let realTimeWeather = response.result.value
            print(realTimeWeather!)
            
        }
//        Alamofire.request(url).responseJSON { response in
//            print(response.request!)  // original URL request
//            print(response.response!) // URL response
//            print(response.data!)     // server data
//            print(response.result)   // result of response serialization
        
            
//            let realm = try! Realm()
//            let json = try! JSONSerialization.jsonObject(with: response.data!, options: [])
//            realm.create(RealTimeWeather.self, value: json, update: true);
//            if let JSON = response.result.value {
//                print(JSON)
//                let realm = try! Realm()
//                let json = try! JSONSerialization.jsonObject(with: response.data!, options: [])
//                realm.create(RealTimeWeather.self, value: json, update: true);
////                completionHandler(JSON)
//            }
//        }
//
    }
    
//    func getRealTimeWeather(_ location: String, completionHandler: @escaping (_ result: Dictionary<String, Any>?) -> Void) {
//        Alamofire.request(url).responseJSON { response in
//            print(response.request!)  // original URL request
//            print(response.response!) // URL response
//            print(response.data!)     // server data
//            print(response.result)   // result of response serialization
//
//            if let JSON = response.result.value {
//                print("JSON: \(JSON)")
//                completionHandler()
//            }
//        }
//
//    }
}
