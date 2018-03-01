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
    
    dynamic var status: String?
    dynamic var temperature: RealmOptional<Double>?
    dynamic var skycon:RealmOptional<Int>?
    dynamic var pm25: RealmOptional<Double>?
    dynamic var cloudRate: RealmOptional<Double>?
    dynamic var humidity: RealmOptional<Double>?
    dynamic var precipitation: PrecipitationDescription?
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
