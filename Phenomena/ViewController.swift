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
        let apiKey = "TAkhjf8d1nlSlspN"
        let url = "https://api.caiyunapp.com/v2/\(apiKey)/121.6544,25.1552/realtime.json"
        Alamofire.request(url).responseJSON { (response) in
            print(response)
        }
    }
}

