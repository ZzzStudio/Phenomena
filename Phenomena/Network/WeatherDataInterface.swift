//
//  WeatherDataInterface.swift
//  Phenomena
//
//  Created by toedwy on 2018/3/18.
//  Copyright © 2018年 Zzz Studio. All rights reserved.
//

import Foundation
import Alamofire
import RealmSwift
import AlamofireObjectMapper

class WeatherDataInterface {
    
    static let apiKey = "H9XapP=AcedlI-nY"
    
    class var realTimeInterface: String? {
        let manager = GeographicInfomationManager.sharedManager
        guard let latitude = manager.locationCoordinate?.latitude,
            let longitude = manager.locationCoordinate?.longitude else { return nil }
        let coordinate = "\(longitude.rounded(toPlaces: 4)),\(latitude.rounded(toPlaces: 4))"
        return "https://api.caiyunapp.com/v2/\(apiKey)/\(coordinate)/realtime.json"
    }
    
    class var forecastInterface: String? {
        let manager = GeographicInfomationManager.sharedManager
        guard let latitude = manager.locationCoordinate?.latitude,
            let longitude = manager.locationCoordinate?.longitude else { return nil }
        let coordinate = "\(longitude.rounded(toPlaces: 4)),\(latitude.rounded(toPlaces: 4))"
        return "https://api.caiyunapp.com/v2/\(apiKey)/\(coordinate)/forecast.json"
    }
    
    class func requestRealTime(_ completionHandler: @escaping (_ result: WeatherRealTime?) -> Void) {
        guard let url = realTimeInterface else { return }
        Alamofire.request(url).responseObject { (response: DataResponse<WeatherRealTime>) in
            let realTimeWeather = response.result.value
            print(realTimeWeather!)
            completionHandler(realTimeWeather)
        }
    }

    class func requestWeatherForecast(_ completionHandler: @escaping (_ result: WeatherForecast?) -> Void) {
        guard let url = forecastInterface else { return }
        Alamofire.request(url).responseObject { (response: DataResponse<WeatherForecast>) in
            let weatherForecast = response.result.value
            print(weatherForecast!)
            completionHandler(weatherForecast)
        }
    }
}
