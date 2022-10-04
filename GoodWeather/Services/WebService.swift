//
//  WebService.swift
//  GoodWeather
//
//  Created by JongHoon on 2022/10/04.
//

import UIKit
import Alamofire

struct Resource<T> {
    let url: URL
    let parse: (Data) -> T?
}

final class WebService {
    
    func load<T>(resource: Resource<T>, completion: @escaping (T?) -> Void) {
        
        URLSession.shared.dataTask(
            with: resource.url) { data, response, error in
                
                if let data = data {
                    DispatchQueue.main.async {
                        completion(resource.parse(data))
                    }
                } else {
                    completion(nil)
                }
                
            }.resume()
    }
}
