//
//  AstronomyDescription.swift
//  Phenomena
//
//  Created by toedwy on 2018/2/26.
//Copyright © 2018年 Zzz Studio. All rights reserved.
//

import Foundation
import RealmSwift
import ObjectMapper

class AstronomyDescription: Object, Mappable {
    
    @objc dynamic var time: String?
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        time <- map["time"]
    }
}
