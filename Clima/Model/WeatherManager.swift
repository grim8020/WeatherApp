//
//  WeatherManager.swift
//  Clima
//
//  Created by Shane Grim on 4/29/22.
//  Copyright © 2022 GrimLab. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=3abd6414bfb20a1e4202d7119ee3be95&units=imperial"
    //parameter order does not matter for url
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
    }
    
}
