//
//  WeatherData.swift
//  Clima
//
//  Created by William Huang on 2023/8/4.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation


struct WeatherData: Codable{
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable{
    let temp: Double
}

struct Weather: Codable{
    let description: String
    let id : Int
}

