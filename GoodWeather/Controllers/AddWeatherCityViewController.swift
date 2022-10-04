//
//  AddWeatherCityViewController.swift
//  GoodWeather
//
//  Created by JongHoon on 2022/09/27.
//

import SnapKit
import UIKit

protocol AddWeatherDelegate: AnyObject {
    func addWeatherDidSave(vm: WeatherViewModel)
}

final class AddWeatherCityViewController: UIViewController {
    
    private var addWeatherVM = AddWeatherViewModel()
    
    weak var delegate: AddWeatherDelegate?
    
    @IBOutlet var cityNameTextField: UITextField!
    
    @IBOutlet var saveCityButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func saveCityButtonPressed(_ sender: Any) {
        
        if let city = cityNameTextField.text {
            addWeatherVM.addWeather(for: city) { [weak self] vm in
                self?.delegate?.addWeatherDidSave(vm: vm)
                self?.dismiss(animated: true)
            }
        }
    }
    
    @IBAction func close() {
        dismiss(animated: true)
    }
}
