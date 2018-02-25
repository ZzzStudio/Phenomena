//
//  WeatherBaseResultIndexValue.swift
//  Phenomena
//
//  Created by toedwy on 2018/2/26.
//Copyright © 2018年 Zzz Studio. All rights reserved.
//

import Foundation
import RealmSwift
import ObjectMapper

class WeatherBaseResultIndexValue: Object, Mappable {
    
    @objc dynamic var index: String?
    @objc dynamic var desc: String?
    @objc dynamic var dateTime: String?
    
    //    override static func primaryKey() -> String? {
    //        return ""
    //    }
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        index       <- map["date"]
        desc        <- map["value"]
        dateTime    <- map["datetime"]
    }
}
