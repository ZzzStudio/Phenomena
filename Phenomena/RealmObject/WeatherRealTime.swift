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

@objcMembers
class WeatherRealTime: Object, Mappable {
    
    /// "ok"
    dynamic var status: String?
    
    /// 语言
    dynamic var lang: String?
    
    /// 服务器时间戳
    var serverTime: RealmOptional<Double>?
    
    /// 时区偏移秒数
    var timeZoneShift: RealmOptional<Double>?
    
    /// 经纬度
    var location = List<DoubleObject>()
    
    /// 米制（metric）和科学计量法（SI）
    dynamic var unit: String?
    
    /// 实时天气主体
    dynamic var result: WeatherRealTimePrimaryResult?
    
//    override static func primaryKey() -> String? {
//        return ""
//    }
    
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
