//
//  WeatherBaseResultStringValue.swift
//  Phenomena
//
//  Created by toedwy on 2018/2/6.
//Copyright © 2018年 Zzz Studio. All rights reserved.
//

import Foundation
import RealmSwift
import ObjectMapper

@objcMembers
class WeatherBaseResultStringValue: Object, Mappable {
    
    @objc dynamic var dateTime: String?
    @objc dynamic var value: String?
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        dateTime    <- map["datetime"]
        value       <- map["value"]
    }
}
