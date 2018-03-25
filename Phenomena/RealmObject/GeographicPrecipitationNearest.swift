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
    var distance: Double = 0
    
    /// 降水强度
    var intensity: Double = 0
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        status      <- map["status"]
        distance    <- map["distance"]
        intensity   <- map["intensity"]
    }
}
