//
//  WeatherForecast.swift
//  Phenomena
//
//  Created by toedwy on 2018/2/2.
//Copyright © 2018年 Zzz Studio. All rights reserved.
//

import Foundation
import RealmSwift
import ObjectMapper

@objcMembers
class WeatherForecast: Object, Mappable {
    
    dynamic var status: String?
    dynamic var lang: String?
    dynamic var result: WeatherForecastPrimaryResult?
    var serverTime: RealmOptional<Double>?
    dynamic var apiStatus: String?
    var timeZoneShift: RealmOptional<Int>?
    dynamic var apiVersion: String?
    dynamic var unit: String?
    var location = List<DoubleObject>()
    
//    override static func primaryKey() -> String? {
//        return ""
//    }
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        status          <- map["status"]
        lang            <- map["lang"]
        result          <- map["result"]
        serverTime      <- map["server_time"]
        apiStatus       <- map["api_status"]
        timeZoneShift   <- map["tzshift"]
        apiVersion      <- map["api_version"]
        unit            <- map["unit"]
        
        var location:[Double]? = nil
        location <- map["location"]
        location?.forEach { value in
            let c = DoubleObject()
            c.value = value
            self.location.append(c)
        }
    }
}
