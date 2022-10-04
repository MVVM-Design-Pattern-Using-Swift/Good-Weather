//
//  WeatherListViewModel.swift
//  GoodWeather
//
//  Created by JongHoon on 2022/10/04.
//

import UIKit

class WeatherListViewModel {
    
}

class WeatherViewModel {
    let weather: WeatherResponse
    
    init(weather: WeatherResponse) {
        self.weather = weather
    }
    
    var city: String {
        return weather.name
    }
    
    var temperature: Double {
        return weather.main.temp
    }
}
