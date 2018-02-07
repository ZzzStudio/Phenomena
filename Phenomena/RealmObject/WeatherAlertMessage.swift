//
//  WeatherAlertMessage.swift
//  Phenomena
//
//  Created by toedwy on 2018/2/7.
//Copyright © 2018年 Zzz Studio. All rights reserved.
//

import Foundation
import RealmSwift
import ObjectMapper

class WeatherAlertMessage: Object, Mappable {
    
    @objc dynamic var status: String?
    @objc dynamic var code: String?
    @objc dynamic var alertDescription: String?
    @objc dynamic var releaseDate: String?
    @objc dynamic var location: String?
    @objc dynamic var boundCoordinates: String?
    
//    override static func primaryKey() -> String? {
//        return ""
//    }
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        status <- map["status"]
        code <- map["code"]
        alertDescription <- map["description"]
        releaseDate <- map["pubdate"]
        location <- map["location"]
        boundCoordinates <- map["bound_coord"]
    }
}
