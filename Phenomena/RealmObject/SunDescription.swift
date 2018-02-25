//
//  SunDescription.swift
//  Phenomena
//
//  Created by toedwy on 2018/2/26.
//Copyright © 2018年 Zzz Studio. All rights reserved.
//

import Foundation
import RealmSwift
import ObjectMapper

class SunDescription: Object, Mappable {
    
    @objc dynamic var date: String?
    @objc dynamic var sunset: AstronomyDescription?
    @objc dynamic var sunrise: AstronomyDescription?
    
    //    override static func primaryKey() -> String? {
    //        return ""
    //    }
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        date        <- map["date"]
        sunset      <- map["sunset"]
        sunrise     <- map["sunrise"]
    }
}
