//
//  GeographicPrecipitationLocal.swift
//  Phenomena
//
//  Created by toedwy on 2018/2/5.
//Copyright © 2018年 Zzz Studio. All rights reserved.
//

import Foundation
import RealmSwift
import ObjectMapper

@objcMembers
class GeographicPrecipitationLocal: Object, Mappable {
    
    dynamic var status: String?
    
    /// 降水强度
    var intensity: Double = 0
    
    /// 数据源
    dynamic var dataSource: String?
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        status      <- map["status"]
        intensity   <- map["intensity"]
        dataSource  <- map["datasource"]
    }
}
