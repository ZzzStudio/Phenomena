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
    
    dynamic var hourly: WeatherForecastHourly?
    dynamic var minutely: WeatherForecastMinutely?
    dynamic var daily: WeatherForecastDaily?
    var primary: RealmOptional<Int>?
    dynamic var status: String?
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
