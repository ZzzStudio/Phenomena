//
//  WeatherBaseResultStringValueLite.swift
//  Phenomena
//
//  Created by toedwy on 2018/2/7.
//Copyright © 2018年 Zzz Studio. All rights reserved.
//

import Foundation
import RealmSwift
import ObjectMapper

@objcMembers
class WeatherBaseResultStringValueLite: Object, Mappable {
    
    dynamic var date: String?
    dynamic var value: String?
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        date    <- map["date"]
        value   <- map["value"]
    }
}
