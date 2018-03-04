//
//  GeographicPrecipitationNearest.swift
//  Phenomena
//
//  Created by toedwy on 2018/2/5.
//Copyright © 2018年 Zzz Studio. All rights reserved.
//

import Foundation
import RealmSwift
import ObjectMapper

@objcMembers
class GeographicPrecipitationNearest: Object, Mappable {
    
    dynamic var status: String?
    
    /// 距离
    var distance: RealmOptional<Double>?
    
    /// 降水强度
    var intensity: RealmOptional<Double>?
    
    //    override static func primaryKey() -> String? {
    //        return ""
    //    }
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        status      <- map["status"]
        distance    <- map["distance"]
        intensity   <- map["intensity"]
    }
}
