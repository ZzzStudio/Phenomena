//
//  WeatherForecastDaily.swift
//  Phenomena
//
//  Created by toedwy on 2018/2/23.
//Copyright © 2018年 Zzz Studio. All rights reserved.
//

import Foundation
import RealmSwift
import ObjectMapper

class WeatherForecastDaily: Object, Mappable {
    
    @objc dynamic var status: String?
    @objc dynamic var descriptionDaily: String?
    
    /// 冰冻指数
    var coldRisk = List<WeatherBaseResultIndexValue>()
    
    /// 温度
    var temperature = List<WeatherBaseResultIntervalValue>()
    
    /// 天气概况
    var skycon = List<WeatherBaseResultStringValueLite>()
    
    /// 云量
    var cloudRate = List<WeatherBaseResultIntervalValue>()
    
    /// AQI
    var aqi = List<WeatherBaseResultIntervalValue>()
    
    /// 相对湿度
    var humidity = List<WeatherBaseResultIntervalValue>()
    
    /// 日出日落
    var astro = List<SunDescription>()
    
    /// 气压
    var pres = List<WeatherBaseResultIntervalValue>()
    
    /// 紫外线强度
    var ultraviolet = List<WeatherBaseResultIndexValue>()
    
    /// PM 2.5
    var pm25 = List<WeatherBaseResultIntervalValue>()
    
    /// 穿衣指数
    var dressing = List<WeatherBaseResultIndexValue>()
    
    /// 洗车指数
    var carWashing = List<WeatherBaseResultIndexValue>()
    
    /// 降水强度
    var precipitation = List<WeatherBaseResultIntervalValue>()
    
    /// 风
    var wind = List<WindDescription>()
    
    //    override static func primaryKey() -> String? {
    //        return ""
    //    }
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        status              <- map["status"]
        descriptionDaily    <- map["description"]
        coldRisk            <- map["coldRisk"]
        temperature         <- map["temperature"]
        skycon              <- map["skycon"]
        cloudRate           <- map["cloudRate"]
        aqi                 <- map["aqi"]
        humidity            <- map["humidity"]
        astro               <- map["astro"]
        pres                <- map["pres"]
        ultraviolet         <- map["ultraviolet"]
        pm25                <- map["pm25"]
        dressing            <- map["dressing"]
        carWashing          <- map["carWashing"]
        precipitation       <- map["precipitation"]
        wind                <- map["wind"]
    }
}

