//
//  GeographicInfomationManager.swift
//  Phenomena
//
//  Created by toedwy on 2018/3/17.
//  Copyright © 2018年 Zzz Studio. All rights reserved.
//

import Foundation
import CoreLocation

class GeographicInfomationManager: NSObject, CLLocationManagerDelegate {
    
    static let sharedManager: GeographicInfomationManager = {
        let manager = GeographicInfomationManager()
        
        manager.locationManager.delegate = manager
        manager.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        manager.locationManager.distanceFilter = 100
        manager.locationManager.requestAlwaysAuthorization()
        if CLLocationManager.locationServicesEnabled() {
            manager.locationManager.startUpdatingLocation()
            print("定位开始")
        }
        
        return manager
    }()
    
    let locationManager = CLLocationManager()
    
    var locationCoordinate: [String: Double] = [:]
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let currentLocation = locations.last!
        locationCoordinate["longitude"] = currentLocation.coordinate.longitude
        locationCoordinate["latitude"] = currentLocation.coordinate.latitude
        print("经度：\(currentLocation.coordinate.longitude)")
        print("纬度：\(currentLocation.coordinate.latitude)")
        
        manager.stopUpdatingLocation()
        
        CLGeocoder().reverseGeocodeLocation(manager.location!) { (placemarks, error) in
            if error != nil {
                print("Error: " + error!.localizedDescription)
                return
            }
            guard placemarks!.count > 0 else { return }
            let placemark = placemarks![0]
            self.displayLocationInfo(placemark: placemark)
        }
    }
    
    func displayLocationInfo(placemark: CLPlacemark) {
        
        self.locationManager.stopUpdatingLocation()
        print(placemark.locality ?? "")
        print(placemark.postalCode ?? "")
        print(placemark.administrativeArea ?? "")
        print(placemark.country ?? "")
    }
    
//    func locationManager(manager: CLLocationManager, didFailWithError error: NSError)
//    {
//        print("Error: " + error.localizedDescription)
//    }
    
}
