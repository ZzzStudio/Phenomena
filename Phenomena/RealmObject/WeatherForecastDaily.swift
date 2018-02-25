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
    var coldRisk = List<WeatherBaseResultIndexValue>()
    var temperature = List<WeatherBaseResultIntervalValue>()
    var skycon = List<WeatherBaseResultStringValueLite>()
    var cloudRate = List<WeatherBaseResultIntervalValue>()
    var aqi = List<WeatherBaseResultIntervalValue>()
    var humidity = List<WeatherBaseResultIntervalValue>()
    var astro = List<SunDescription>()
    var pres = List<WeatherBaseResultIntervalValue>()
    var ultraviolet = List<WeatherBaseResultIndexValue>()
    var pm25 = List<WeatherBaseResultIntervalValue>()
    var dressing = List<WeatherBaseResultIndexValue>()
    var carWashing = List<WeatherBaseResultIndexValue>()
    var precipitation = List<WeatherBaseResultIntervalValue>()
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

