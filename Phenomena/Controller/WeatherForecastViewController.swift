//
//  WeatherForecastViewController.swift
//  Phenomena
//
//  Created by toedwy on 2018/3/7.
//  Copyright © 2018年 Zzz Studio. All rights reserved.
//

import RealmSwift
import UIKit

class WeatherForecastViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!
    @IBOutlet weak var tableView: UITableView!

    private var hourlySkycon = List<WeatherBaseResultStringValue>()
    private var hourlyTemperature = List<WeatherBaseResultDoubleValue>()

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView .register(UINib.init(nibName: "LatestWeatherCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "LatestWeatherCollectionViewCell")
        flowLayout.scrollDirection = .horizontal
        flowLayout.itemSize = CGSize.init(width: 40, height: 141)

        tableView.delegate = self
        tableView.dataSource = self
        tableView .register(UINib.init(nibName: "WeatherForecastTableViewCell", bundle: nil), forCellReuseIdentifier: "WeatherForecastTableViewCell")

        setupForecast()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func setupForecast() {
        WeatherDataInterface.requestWeatherForecast { (result) in
            log.debug("result")
            guard let forecast = result else { return }
//            guard let skycon = forecast.result?.hourly?.skycon else
            if let hourlySkycon = forecast.result?.hourly?.skycon {
                self.hourlySkycon = hourlySkycon
            }
            if let hourlyTemperature = forecast.result?.hourly?.temperature {
                self.hourlyTemperature = hourlyTemperature
            }
            self.collectionView.reloadData()
        }
    }

}

// MARK: - UICollectionViewDelegate
extension WeatherForecastViewController: UICollectionViewDelegate {

}

// MARK: - UICollectionViewDataSource
extension WeatherForecastViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LatestWeatherCollectionViewCell", for: indexPath)
        return cell
    }
}

// MARK: - UITableViewDelegate
extension WeatherForecastViewController: UITableViewDelegate {

}

// MARK: - UITableViewDataSource
extension WeatherForecastViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherForecastTableViewCell", for: indexPath)
        return cell
    }
}
