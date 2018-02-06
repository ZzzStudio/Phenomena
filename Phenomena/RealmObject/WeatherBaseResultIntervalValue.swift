//
//  WeatherBaseResultIntervalValue.swift
//  Phenomena
//
//  Created by toedwy on 2018/2/7.
//Copyright © 2018年 Zzz Studio. All rights reserved.
//

import Foundation
import RealmSwift
import ObjectMapper

class WeatherBaseResultIntervalValue: Object, Mappable {
    
    @objc dynamic var date = ""
    @objc dynamic var maximum = 0.0
    @objc dynamic var average = 0.0
    @objc dynamic var minimum = 0.0
    
    //    override static func primaryKey() -> String? {
    //        return ""
    //    }
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        date <- map["date"]
        maximum <- map["max"]
        average <- map["avg"]
        minimum <- map["min"]
    }
}
