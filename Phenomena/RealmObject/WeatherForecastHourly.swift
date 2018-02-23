//
//  WeatherForecastHourly.swift
//  Phenomena
//
//  Created by toedwy on 2018/2/23.
//Copyright © 2018年 Zzz Studio. All rights reserved.
//

import Foundation
import RealmSwift
import ObjectMapper

class WeatherForecastHourly: Object, Mappable {
    
    @objc dynamic var status: String?
    @objc dynamic var descriptionHourly: String?
    var skycon = List<WeatherBaseResultStringValue>()
    var cloudrate = List<WeatherBaseResultDoubleValue>()
    var aqi = List<WeatherBaseResultDoubleValue>()
    var humidity = List<WeatherBaseResultDoubleValue>()
    var pres = List<WeatherBaseResultDoubleValue>()
    var pm25 = List<WeatherBaseResultDoubleValue>()
    var precipitation = List<WeatherBaseResultDoubleValue>()
    var wind = List<WindDescription>()
    var temperature = List<WeatherBaseResultDoubleValue>()
    
//    override static func primaryKey() -> String? {
//        return ""
//    }
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        status              <- map["status"]
        descriptionHourly   <- map["description"]
        skycon              <- map["skycon"]
        cloudrate           <- map["cloudrate"]
        aqi                 <- map["aqi"]
        humidity            <- map["humidity"]
        pres                <- map["pres"]
        pm25                <- map["pm25"]
        precipitation       <- map["precipitation"]
        wind                <- map["wind"]
        temperature         <- map["temperature"]
    }
}
