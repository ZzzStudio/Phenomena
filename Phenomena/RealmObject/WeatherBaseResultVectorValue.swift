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

class WeatherBaseResultVectorValue: Object, Mappable {
    
    @objc dynamic var direction = 0.0
    @objc dynamic var speed = 0.0
    @objc dynamic var dateTime = ""
    
//    override static func primaryKey() -> String? {
//        return ""
//    }
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        direction <- map["direction"]
        speed <- map["speed"]
        dateTime <- map["datetime"]
    }
}
