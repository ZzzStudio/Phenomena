//
//  WeatherRealTimePrimaryResult.swift
//  Phenomena
//
//  Created by toedwy on 2018/2/5.
//Copyright © 2018年 Zzz Studio. All rights reserved.
//

import Foundation
import RealmSwift
import ObjectMapper

class WeatherRealTimePrimaryResult: Object, Mappable {
    
    @objc dynamic var status = ""
    @objc dynamic var temperature = 0
    @objc dynamic var skycon = 0
    @objc dynamic var pm25 = 0
    @objc dynamic var cloudRate = 0
    @objc dynamic var humidity = 0
    @objc dynamic var precipitation: PrecipitationDescription?
    @objc dynamic var wind: WindDescription?
    
    //    override static func primaryKey() -> String? {
    //        return ""
    //    }
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        status <- map["status"]
        temperature <- map["temperature"]
        skycon <- map["skycon"]
        pm25 <- map["pm25"]
        cloudRate <- map["cloudrate"]
        humidity <- map["humidity"]
        precipitation <- map["precipitation"]
        wind <- map["wind"]
    }
}
