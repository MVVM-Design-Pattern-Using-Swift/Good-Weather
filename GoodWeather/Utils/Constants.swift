//
//  Constants.swift
//  GoodWeather
//
//  Created by JongHoon on 2022/10/04.
//

import Foundation

struct Constants {
    
    struct Urls {
        
        static func urlForWeatherByCity(city: String) -> URL {
            
            return URL(
                string: "https://api.openweathermap.org/data/2.5/weather?q=\(city.escaped())&appid=d16c7edb6d49d036be3b31c13958259f&units=imperial"
            )!
        }
    }
}
