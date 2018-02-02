//
//  RealTimeWeather.swift
//  Phenomena
//
//  Created by toedwy on 2018/2/2.
//Copyright © 2018年 Zzz Studio. All rights reserved.
//

import Foundation
import RealmSwift

class RealTimeWeather: Object {
    
    @objc dynamic var status = ""
    @objc dynamic var lang = ""
    @objc dynamic var server_time = 0
    @objc dynamic var tzshift = 0
    @objc dynamic var location = 0
    @objc dynamic var unit = ""
    @objc dynamic var result: Any?
    
// Specify properties to ignore (Realm won't persist these)
    
//  override static func ignoredProperties() -> [String] {
//    return []
//  }
}
