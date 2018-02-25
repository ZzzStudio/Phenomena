//
//  WeatherForecastMinutely.swift
//  Phenomena
//
//  Created by toedwy on 2018/2/23.
//Copyright © 2018年 Zzz Studio. All rights reserved.
//

import Foundation
import RealmSwift
import ObjectMapper

class WeatherForecastMinutely: Object, Mappable {
    
    @objc dynamic var status: String?
    @objc dynamic var descriptionMinutely: String?
    @objc dynamic var dataSource: String?
    var probability = List<DoubleObject>()
    var precipitation2h = List<DoubleObject>()
    var precipitation = List<DoubleObject>()
    
    //    override static func primaryKey() -> String? {
    //        return ""
    //    }
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        status                  <- map["status"]
        descriptionMinutely     <- map["description"]
        dataSource              <- map["datasource"]
        
        var probability:[Double]? = nil
        probability <- map["probability"]
        probability?.forEach { value in
            let c = DoubleObject()
            c.value = value
            self.probability.append(c)
        }
        var precipitation2h:[Double]? = nil
        precipitation2h <- map["precipitation_2h"]
        precipitation2h?.forEach { value in
            let c = DoubleObject()
            c.value = value
            self.precipitation2h.append(c)
        }
        var precipitation:[Double]? = nil
        precipitation <- map["precipitation"]
        precipitation?.forEach { value in
            let c = DoubleObject()
            c.value = value
            self.precipitation.append(c)
        }
    }
}

