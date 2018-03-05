//
//  WeatherBaseResultVectorValue.swift
//  Phenomena
//
//  Created by toedwy on 2018/2/7.
//Copyright © 2018年 Zzz Studio. All rights reserved.
//

import Foundation
import RealmSwift
import ObjectMapper

@objcMembers
class WeatherBaseResultVectorValue: Object, Mappable {
    
    dynamic var direction: RealmOptional<Double>?
    dynamic var speed: RealmOptional<Double>?
    dynamic var dateTime: String?
    
//    override static func primaryKey() -> String? {
//        return ""
//    }
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        direction   <- map["direction"]
        speed       <- map["speed"]
        dateTime    <- map["datetime"]
    }
}
