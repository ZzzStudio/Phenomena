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
    
    /// “gfs - Global Forecast System” “radar”
    @objc dynamic var dataSource: String?
    
    /// （大概是）概率
    var probability = List<DoubleObject>()
    
    /// （大概是）未来两小时
    var precipitation2h = List<DoubleObject>()
    
    /// 降水强度：未来一小时每分钟的降雨量
    /// 0.03-0.25 是小雨，0.25-0.35 是中雨, 0.35 以上是大雨，根据不同地区情况可以有所调整
    var precipitation = List<DoubleObject>()
    
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

