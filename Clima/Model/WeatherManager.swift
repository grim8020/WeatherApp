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
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String) {
        //1. Create a URL
        
        if let url = URL(string: urlString) {
            //2. Create a URLSession
            
            let session =  URLSession(configuration: .default)
            
            //3. Give the session a task
            
            let task = session.dataTask(with: url, completionHandler: handle(data:response:error:))
            
            //4. Start the task
            task.resume()
        }
        
    }
    
    func handle(data: Data?, response: URLResponse?, error: Error?) -> Void {
        if error != nil {
            print(error!)
            return //return without anything after it means "exit out of the function"
        }
        
        if let safeData = data {
            let dataString = String(data: safeData, encoding: .utf8)
            print(dataString ?? "error")
        }
    }
    
}
