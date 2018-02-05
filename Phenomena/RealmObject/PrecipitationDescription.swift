//
//  PrecipitationDescription.swift
//  Phenomena
//
//  Created by toedwy on 2018/2/5.
//Copyright © 2018年 Zzz Studio. All rights reserved.
//

import Foundation
import RealmSwift
import ObjectMapper

class PrecipitationDescription: Object, Mappable {
    
    @objc dynamic var nearest: GeographicPrecipitationNearest?
    @objc dynamic var local: GeographicPrecipitationLocal?
    
    //    override static func primaryKey() -> String? {
    //        return ""
    //    }
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        nearest <- map["nearest"]
        local <- map["local"]
    }
}
