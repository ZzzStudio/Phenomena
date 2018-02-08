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
    @objc dynamic var serverTime = 0
    @objc dynamic var timeZoneShift = 0
    var location = List<DoubleObject>()
    @objc dynamic var unit = ""
//    @objc dynamic var result: WeatherRealTimePrimaryResult?
    
    override static func primaryKey() -> String? {
        return "status"
    }
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        status <- map["status"]
        lang <- map["lang"]
        serverTime <- map["server_time"]
        timeZoneShift <- map["tzshift"]
        
        var location:[Double]? = nil
        location <- map["location"]
        location?.forEach { value in
            let c = DoubleObject()
            c.value = value
            self.location.append(c)
        }
        
        unit <- map["unit"]
//        result <- map["result"]
    }
}
