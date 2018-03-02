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
  
    /// (ok)
    dynamic var status: String?
    
    /// 简体中文（zh_CN、zh_SG）、繁体中文（zh_TW、zh_HK）
    dynamic var lang: String?
    
    /// 天气预报主体，日（daily）、小时（hourly）、分钟（minutely）
    dynamic var result: WeatherForecastPrimaryResult?

    /// 时间戳
    var serverTime: RealmOptional<Double>?
    
    /// API 状态
    dynamic var apiStatus: String?
    
    /// 时区的偏移秒数，e.g. 东八区 28800 秒
    var timeZoneShift: RealmOptional<Int>?
    
    /// API 版本
    dynamic var apiVersion: String?
    
    /// 支持米制（metric）、科学计量法（SI）
    dynamic var unit: String?
    
    /// 经纬度
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
