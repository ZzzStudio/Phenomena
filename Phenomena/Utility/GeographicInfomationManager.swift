//
//  GeographicInfomationManager.swift
//  Phenomena
//
//  Created by toedwy on 2018/3/17.
//  Copyright © 2018年 Zzz Studio. All rights reserved.
//

import Foundation
import CoreLocation

protocol GeographicInfomationManagerDelegate {
//    func geographicInfomationManager(_ manager: GeographicInfomationManager, didUpdateLocation: CLLocation)
    func geographicInfomationManager(_ manager: GeographicInfomationManager, didUpdatePlacemark placemark: CLPlacemark)
    
}

extension GeographicInfomationManagerDelegate {
    func geographicInfomationManager(_ manager: GeographicInfomationManager, didUpdateLocation location: CLLocation) {}
//    func geographicInfomationManager(_ manager: GeographicInfomationManager, didUpdatePlacemark placemark: CLPlacemark) {}
}

class GeographicInfomationManager: NSObject {
    
    static let sharedManager = GeographicInfomationManager()
    var delegate: GeographicInfomationManagerDelegate?
    var locationCoordinate: [String: Double] = [:]
    
    fileprivate let locationManager = CLLocationManager()

    override init() {
        super.init()
        
        locationManager.delegate = self;
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        if CLLocationManager.locationServicesEnabled() {
            locationManager.startUpdatingLocation()
            print("定位开始")
        }
    }
    
//    static let sharedManager: GeographicInfomationManager = {
//        let manager = GeographicInfomationManager()
//
//        manager.locationManager.delegate = manager
//        manager.locationManager.desiredAccuracy = kCLLocationAccuracyBest
//        manager.locationManager.distanceFilter = 100
//        manager.locationManager.requestAlwaysAuthorization()
//        if CLLocationManager.locationServicesEnabled() {
//            manager.locationManager.startUpdatingLocation()
//            print("定位开始")
//        }
//
//        return manager
//    }()

}

// MARK: - CLLocationManagerDelegate
extension GeographicInfomationManager: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Error: " + error.localizedDescription)
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let currentLocation = locations.last!
        locationCoordinate["longitude"] = currentLocation.coordinate.longitude
        locationCoordinate["latitude"] = currentLocation.coordinate.latitude
        print("经度：\(currentLocation.coordinate.longitude)")
        print("纬度：\(currentLocation.coordinate.latitude)")
        
        CLGeocoder().reverseGeocodeLocation(manager.location!) { (placemarks, error) in
            if error != nil {
                print("Error: " + error!.localizedDescription)
                return
            }
            guard placemarks!.count > 0 else { return }
            let placemark = placemarks![0]
            self.displayLocationInfo(placemark: placemark)
            self.delegate?.geographicInfomationManager(self, didUpdatePlacemark: placemark);
        }
    }
    
    func displayLocationInfo(placemark: CLPlacemark) {
        
        self.locationManager.stopUpdatingLocation()
        
        print(placemark.locality ?? "")
        print(placemark.postalCode ?? "")
        print(placemark.administrativeArea ?? "")
        print(placemark.country ?? "")
    }
}


