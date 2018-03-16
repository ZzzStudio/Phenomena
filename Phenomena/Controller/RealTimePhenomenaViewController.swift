//
//  RealTimePhenomenaViewController.swift
//  Phenomena
//
//  Created by toedwy on 2018/3/17.
//  Copyright © 2018年 Zzz Studio. All rights reserved.
//

import UIKit

class RealTimePhenomenaViewController: UIViewController {
    
    @IBOutlet weak var regionLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var pm25Label: UILabel!
    @IBOutlet weak var cloudinessLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var precipitationLabel: UILabel!
    @IBOutlet weak var windDirectionLabel: UILabel!
    @IBOutlet weak var windSpeedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        _ = GeographicInfomationManager.sharedManager
        
    }

}