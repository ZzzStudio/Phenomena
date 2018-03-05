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

@objcMembers
class SunDescription: Object, Mappable {
    
    dynamic var date: String?
    dynamic var sunset: AstronomyDescription?
    dynamic var sunrise: AstronomyDescription?
    
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
