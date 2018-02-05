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

class GeographicPrecipitationLocal: Object, Mappable {
    
    @objc dynamic var status = ""
    @objc dynamic var intensity = 0
    @objc dynamic var dataSource = ""
    
    //    override static func primaryKey() -> String? {
    //        return ""
    //    }
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        status <- map["status"]
        intensity <- map["intensity"]
        dataSource <- map["datasource"]
    }
}
