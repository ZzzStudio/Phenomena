//
//  WindDescription.swift
//  Phenomena
//
//  Created by toedwy on 2018/2/5.
//Copyright © 2018年 Zzz Studio. All rights reserved.
//

import Foundation
import RealmSwift
import ObjectMapper

class WindDescription: Object, Mappable {
    
    /// 风向
    var direction: RealmOptional<Double>?
    
    /// 风速
    var speed: RealmOptional<Double>?
    
    /// 时间
    @objc dynamic var dateTime: String?
    
//    override static func primaryKey() -> String? {
//        return ""
//    }
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        direction   <- map["direction"]
        speed       <- map["speed"]
        dateTime    <- map["datetime"]
    }
}
