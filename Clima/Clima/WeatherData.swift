//
//  WeatherData.swift
//  Clima
//
//  Created by 진아현 on 5/5/25.
//  Copyright © 2025 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
}


struct Weather: Codable {
    let description: String
    let id: Int
}
