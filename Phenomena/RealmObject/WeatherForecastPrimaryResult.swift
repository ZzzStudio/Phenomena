//
//  WeatherForecastPrimaryResult.swift
//  Phenomena
//
//  Created by toedwy on 2018/2/11.
//Copyright © 2018年 Zzz Studio. All rights reserved.
//

import Foundation
import RealmSwift
import ObjectMapper

class WeatherForecastPrimaryResult: Object, Mappable {
    
    @objc dynamic var status = ""
//    @objc dynamic var hourly
//    @objc dynamic var minutely
//    @objc dynamic var daily
//    @objc dynamic var alert
    
//    override static func primaryKey() -> String? {
//        return ""
//    }
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        status <- map["status"]
//        hourly <- map["hourly"]
//        minutely <- map["minutely"]
//        daily <- map["daily"]
//        alert <- map["alert"]
    }
}
