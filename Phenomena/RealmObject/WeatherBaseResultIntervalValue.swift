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
    
    @objc dynamic var date: String?
    var maximum: RealmOptional<Double>?
    var average: RealmOptional<Double>?
    var minimum: RealmOptional<Double>?
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        date    <- map["date"]
        maximum <- map["max"]
        average <- map["avg"]
        minimum <- map["min"]
    }
}
