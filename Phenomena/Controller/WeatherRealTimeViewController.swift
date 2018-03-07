//
//  WeatherRealTimeViewController.swift
//  Phenomena
//
//  Created by toedwy on 2018/3/7.
//  Copyright © 2018年 Zzz Studio. All rights reserved.
//

import UIKit
import CoreLocation

class WeatherRealTimeViewController: UIViewController, CLLocationManagerDelegate {

    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        locationManager.delegate = self
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        locationManager.distanceFilter = 100
        
        locationManager.requestAlwaysAuthorization()
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager.startUpdatingLocation()
            print("start locating")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let currentLocation = locations.last!
        print("经度：\(currentLocation.coordinate.longitude)")
        print("纬度：\(currentLocation.coordinate.latitude)")
    }

}
