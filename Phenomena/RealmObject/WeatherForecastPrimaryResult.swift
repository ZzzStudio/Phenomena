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

class WeatherForecastPrimaryResult: Object, Mappable {
    
    @objc dynamic var hourly: String?
    @objc dynamic var minutely: String?
    @objc dynamic var daily: String?
    var primary: RealmOptional<Int>?
    @objc dynamic var status: String?
    @objc dynamic var alert: String?
    
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
