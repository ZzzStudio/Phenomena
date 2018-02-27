//
//  WeatherRealTime.swift
//  Phenomena
//
//  Created by toedwy on 2018/2/5.
//Copyright © 2018年 Zzz Studio. All rights reserved.
//

import Foundation
import RealmSwift
import ObjectMapper

//class DoubleObject: Object {
//    @objc dynamic var value: Double = 0.0
//}

class WeatherRealTime: Object, Mappable {
    
    @objc dynamic var status: String?
    @objc dynamic var lang: String?
    var serverTime: RealmOptional<Double>?
    var timeZoneShift: RealmOptional<Double>?
    var location = List<DoubleObject>()
    @objc dynamic var unit: String?
    @objc dynamic var result: WeatherRealTimePrimaryResult?
    
    override static func primaryKey() -> String? {
        return "status"
    }
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        status          <- map["status"]
        lang            <- map["lang"]
        serverTime      <- map["server_time"]
        timeZoneShift   <- map["tzshift"]
        unit            <- map["unit"]
        result          <- map["result"]
        
        var location:[Double]? = nil
        location <- map["location"]
        location?.forEach { value in
            let c = DoubleObject()
            c.value = value
            self.location.append(c)
        }
    }
}
