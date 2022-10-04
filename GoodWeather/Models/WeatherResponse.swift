//
//  WeatherResponse.swift
//  GoodWeather
//
//  Created by JongHoon on 2022/10/04.
//

import Foundation

struct WeatherResponse: Decodable {
    let name: String
    let main: Weather
}

struct Weather: Decodable {
    let temp: Double
    let humidity: Double
}
