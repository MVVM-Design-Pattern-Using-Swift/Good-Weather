//
//  String+Extensions.swift
//  GoodWeather
//
//  Created by JongHoon on 2022/10/04.
//

import Foundation

extension String {
    
    func escaped() -> String {
        return addingPercentEncoding(
            withAllowedCharacters: .urlHostAllowed
        ) ?? self
    }
}
