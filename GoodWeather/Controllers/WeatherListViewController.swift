//
//  WeatherListViewController.swift
//  GoodWeather
//
//  Created by JongHoon on 2022/09/22.
//

import SnapKit
import UIKit

final class WeatherListViewController: UITableViewController, AddWeatherDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func addWeatherDidSave(vm: WeatherViewModel) {
        print(vm)
    }
    
    override func prepare(
        for segue: UIStoryboardSegue,
        sender: Any?
    ) {
        if segue.identifier == "AddWeatherCityViewController" {
            prepareSegueForAddWeatherCityViewController(segue: segue)
        }
    }
    
    func prepareSegueForAddWeatherCityViewController(segue: UIStoryboardSegue) {
        
        guard let nav = segue.destination as? UINavigationController else {
            fatalError("navigationController not found")
        }
        
        guard let addWeatherCityVC = nav.viewControllers.first as? AddWeatherCityViewController else {
            fatalError("AddWeatherCityController not found")
        }
        
        addWeatherCityVC.delegate = self
        
        
    }
    
    // MARK: - TableView
    
    override func numberOfSections(
        in tableView: UITableView
    ) -> Int {
        return 1
    }
    
    override func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {
        return 1
    }
    
    override func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "WeatherCell",
            for: indexPath
        ) as? WeatherCell
        
        cell?.cityNameLabel.text = "Houston"
        cell?.temperatureLabel.text = "70°"
        return cell ?? UITableViewCell()
    }
    
    override func tableView(
        _ tableView: UITableView,
        heightForRowAt indexPath: IndexPath
    ) -> CGFloat {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
