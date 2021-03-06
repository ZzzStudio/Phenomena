//
//  ViewController.swift
//  Phenomena
//
//  Created by toedwy on 2018/1/17.
//  Copyright © 2018年 Zzz Studio. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func onGetButtonTapped(_ sender: Any) {
        GetRealTimeWeatherRequest.getRealTimeWeather("location") { (result) in
            print(result!)
        }
    }

    @IBAction func onForecastButtonTapped(_ sender: Any) {
        GetRealTimeWeatherRequest.getWeatherForecast("forecast") { (result) in
            print(result!)
        }
    }
}

