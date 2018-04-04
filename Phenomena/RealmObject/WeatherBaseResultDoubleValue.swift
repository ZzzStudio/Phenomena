//
//  WeatherBaseResultDoubleValue.swift
//  Phenomena
//
//  Created by toedwy on 2018/2/6.
//Copyright © 2018年 Zzz Studio. All rights reserved.
//

import Foundation
import RealmSwift
import ObjectMapper

class WeatherBaseResultDoubleValue: Object, Mappable {
    
    @objc dynamic var dateTime: String?
    var value: RealmOptional<Double>?
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        dateTime    <- map["datetime"]
        value       <- map["value"]
    }
}
