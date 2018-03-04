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

@objcMembers
class WeatherRealTimePrimaryResult: Object, Mappable {
    
    /// "ok"
    dynamic var status: String?
    
    /// 温度
    dynamic var temperature: RealmOptional<Double>?
    
    /// 天气概况
    dynamic var skycon: String?
    
    /// PM 2.5
    dynamic var pm25: RealmOptional<Double>?
    
    /// 云量
    dynamic var cloudRate: RealmOptional<Double>?
    
    /// 相对湿度
    dynamic var humidity: RealmOptional<Double>?
    
    /// 降水
    dynamic var precipitation: PrecipitationDescription?
    
    /// 风
    dynamic var wind: WindDescription?
    
    //    override static func primaryKey() -> String? {
    //        return ""
    //    }
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        status          <- map["status"]
        temperature     <- map["temperature"]
        skycon          <- map["skycon"]
        pm25            <- map["pm25"]
        cloudRate       <- map["cloudrate"]
        humidity        <- map["humidity"]
        precipitation   <- map["precipitation"]
        wind            <- map["wind"]
    }
}
