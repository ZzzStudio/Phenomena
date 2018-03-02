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

@objcMembers
class WeatherForecastHourly: Object, Mappable {
    
    dynamic var status: String?
    
    /// 自然语言描述
    dynamic var descriptionHourly: String?
    
    /// 天气概况
    var skycon = List<WeatherBaseResultStringValue>()
    
    /// 云量
    var cloudrate = List<WeatherBaseResultDoubleValue>()
    
    /// AQI（空气质量指数）
    var aqi = List<WeatherBaseResultDoubleValue>()
    
    /// 相对湿度
    var humidity = List<WeatherBaseResultDoubleValue>()
    var pres = List<WeatherBaseResultDoubleValue>()
    
    /// PM 2.5
    var pm25 = List<WeatherBaseResultDoubleValue>()
    
    /// 降水强度 0.05 ~ 0.9 小雨；0.9 ~ 2.87 中雨；> 2.87 大雨
    var precipitation = List<WeatherBaseResultDoubleValue>()
    
    /// 风
    var wind = List<WindDescription>()
    
    /// 温度
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
