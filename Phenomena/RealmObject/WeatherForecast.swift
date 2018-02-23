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

class WeatherForecast: Object, Mappable {
    
    @objc dynamic var status = ""
    @objc dynamic var lang = ""
    @objc dynamic var result: WeatherRealTimePrimaryResult?
    @objc dynamic var serverTime = 0
    @objc dynamic var apiStatus = ""
    @objc dynamic var timeZoneShift = 0
    @objc dynamic var apiVersion = ""
    @objc dynamic var unit = ""
    var location = List<DoubleObject>()
    
//    override static func primaryKey() -> String? {
//        return ""
//    }
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        status <- map["status"]
        lang <- map["lang"]
        result <- map["result"]
        serverTime <- map["server_time"]
        apiStatus <- map["api_status"]
        timeZoneShift <- map["tzshift"]
        apiVersion <- map["api_version"]
        unit <- map["unit"]
        var location:[Double]? = nil
        location <- map["location"]
        location?.forEach { value in
            let c = DoubleObject()
            c.value = value
            self.location.append(c)
        }
    }
}
