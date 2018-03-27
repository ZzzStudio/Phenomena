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
import ObjectMapperAdditions
import ObjectMapper_Realm

@objcMembers
class WeatherRealTimePrimaryResult: Object, Mappable {
    
    /// "ok"
    dynamic var status: String?
    
    /// 温度
    // I cannot find a way transforming result into Optional Object
//    dynamic var temperature: Double?
    dynamic var temperature = RealmOptional<Double>()
    
    /// 天气概况
    dynamic var skycon: String?
    
    /// PM 2.5
    dynamic var pm25: Double = 0
    
    /// 云量
    dynamic var cloudRate: Double = 0
    
    /// 相对湿度
    dynamic var humidity: Double = 0
    
    /// 降水
    dynamic var precipitation: PrecipitationDescription?
    
    /// 风
    dynamic var wind: WindDescription?
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        status          <- map["status"]
        temperature     <- (map["temperature"], RealmOptionalTypeCastTransform())
        skycon          <- map["skycon"]
        pm25            <- map["pm25"]
        cloudRate       <- map["cloudrate"]
        humidity        <- map["humidity"]
        precipitation   <- map["precipitation"]
        wind            <- map["wind"]
    }
}
