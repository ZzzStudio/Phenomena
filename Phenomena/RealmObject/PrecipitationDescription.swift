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

@objcMembers
class PrecipitationDescription: Object, Mappable {
    
    /// 最近的降水带
    dynamic var nearest: GeographicPrecipitationNearest?
    
    /// 本地的降水
    dynamic var local: GeographicPrecipitationLocal?
    
    //    override static func primaryKey() -> String? {
    //        return ""
    //    }
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        nearest     <- map["nearest"]
        local       <- map["local"]
    }
}
