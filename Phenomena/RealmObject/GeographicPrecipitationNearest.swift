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

class GeographicPrecipitationNearest: Object, Mappable {
    
    @objc dynamic var status = ""
    @objc dynamic var distance = 0
    @objc dynamic var intensity = 0
    
    //    override static func primaryKey() -> String? {
    //        return ""
    //    }
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        status <- map["status"]
        distance <- map["distance"]
        intensity <- map["intensity"]
    }
}
