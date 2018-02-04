//
//  RealTimeWeather.swift
//  Phenomena
//
//  Created by toedwy on 2018/2/2.
//Copyright © 2018年 Zzz Studio. All rights reserved.
//

import Foundation
import RealmSwift
import ObjectMapper

class RealTimeWeather: Object, Mappable {
    
    @objc dynamic var status = ""
    @objc dynamic var lang = ""
    @objc dynamic var serverTime = 0
    @objc dynamic var timeZoneShift = 0
    @objc dynamic var location = 0
    @objc dynamic var unit = ""
//    @objc dynamic var result = ""
    
    override static func primaryKey() -> String? {
        return "status"
    }
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        status <- map["status"]
        lang <- map["lang"]
        serverTime <- map["server_time"]
        timeZoneShift <- map["tzshift"]
        location <- map["location"]
        unit <- map["unit"]
    }
    
// Specify properties to ignore (Realm won't persist these)
    
//  override static func ignoredProperties() -> [String] {
//    return []
//  }
}
