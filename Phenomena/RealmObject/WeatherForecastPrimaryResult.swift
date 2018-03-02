//
//  WeatherForecastPrimaryResult.swift
//  Phenomena
//
//  Created by toedwy on 2018/2/11.
//Copyright © 2018年 Zzz Studio. All rights reserved.
//

import Foundation
import RealmSwift
import ObjectMapper

@objcMembers
class WeatherForecastPrimaryResult: Object, Mappable {
    
    /// 小时级，未来 48 小时
    dynamic var hourly: WeatherForecastHourly?
    
    /// 分钟级
    dynamic var minutely: WeatherForecastMinutely?
    
    /// 天级，未来 5 天
    dynamic var daily: WeatherForecastDaily?
    
    /// 未知，0
    var primary: RealmOptional<Int>?
    
    /// 未知
    dynamic var status: String?
    
    /// “当地政府部门预警信息”
    dynamic var alert: String?
    
    //    override static func primaryKey() -> String? {
    //        return ""
    //    }
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        hourly      <- map["hourly"]
        minutely    <- map["minutely"]
        daily       <- map["daily"]
        primary     <- map["primary"]
        status      <- map["status"]
        alert       <- map["alert"]
    }
}
