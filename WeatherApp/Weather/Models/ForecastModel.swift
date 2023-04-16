//
//  ForecastModel.swift
//  Weather
//
//  Created by Alperen Çetin on 16.04.2023.
//

import Foundation

enum ForecastPeriod {
    case hourly
    case daily
}

enum Weather: String {
    case clear = "Clear"
    case cloudy = "Cloudy"
    case rainy = "Mid Rain"
    case stormy = "Showers"
    case sunny = "Sunny"
    case tornado = "Tornado"
    case windy = "Fast Wind"
}

struct Forecast: Identifiable {
    var id = UUID()
    var date: Date
    var weather: Weather
    var probability: Int
    var temperature: Int
    var high: Int
    var low: Int
    var location: String
    
    var icon: String {
        switch weather {
        case .clear:
            return "Moon"
        case .cloudy:
            return "Cloud"
        case .rainy:
            return "Moon cloud mid rain"
        case .stormy:
            return "Sun cloud angled rain"
        case .sunny:
            return "Sun"
        case .tornado:
            return "Tornado"
        case .windy:
            return "Moon cloud fast wind"
        }
    }
}

extension Forecast {
    static let hour: TimeInterval = 60 * 60
    static let day: TimeInterval = 60 * 60 * 24
    
    static let hourly: [Forecast] = [
        Forecast(date: .init(timeIntervalSinceNow: hour * -1), weather: .rainy, probability: 30, temperature: 20, high: 24, low: 18, location: "Istanbul, Turkey"),
        Forecast(date: .now, weather: .rainy, probability: 0, temperature: 20, high: 24, low: 18, location: "Montreal, Canada"),
        Forecast(date: .init(timeIntervalSinceNow: hour * 1), weather: .windy, probability: 0, temperature: 20, high: 24, low: 18, location: "Istanbul, Turkey"),
        Forecast(date: .init(timeIntervalSinceNow: hour * 2), weather: .rainy, probability: 0, temperature: 18, high: 24, low: 18, location: "Istanbul, Turkey"),
        Forecast(date: .init(timeIntervalSinceNow: hour * 3), weather: .rainy, probability: 0, temperature: 20, high: 24, low: 18, location: "Istanbul, Turkey"),
        Forecast(date: .init(timeIntervalSinceNow: hour * 4), weather: .rainy, probability: 0, temperature: 19, high: 24, low: 18, location: "Istanbul, Turkey")
    ]
    
    static let daily: [Forecast] = [
        Forecast(date: .init(timeIntervalSinceNow: 0), weather: .rainy, probability: 30, temperature: 19, high: 24, low: 18, location: "Istanbul, Turkey"),
        Forecast(date: .init(timeIntervalSinceNow: day * 1), weather: .rainy, probability: 0, temperature: 19, high: 24, low: 18, location: "Istanbul, Turkey"),
        Forecast(date: .init(timeIntervalSinceNow: day * 2), weather: .stormy, probability: 100, temperature: 19, high: 24, low: 18, location: "Istanbul, Turkey"),
        Forecast(date: .init(timeIntervalSinceNow: day * 3), weather: .stormy, probability: 50, temperature: 18, high: 24, low: 18, location: "Istanbul, Turkey"),
        Forecast(date: .init(timeIntervalSinceNow: day * 4), weather: .rainy, probability: 0, temperature: 19, high: 24, low: 18, location: "Istanbul, Turkey"),
        Forecast(date: .init(timeIntervalSinceNow: day * 5), weather: .rainy, probability: 0, temperature: 19, high: 24, low: 18, location: "Istanbul, Turkey")
    ]
    
    static let cities: [Forecast] = [
        Forecast(date: .now, weather: .rainy, probability: 0, temperature: 20, high: 21, low: 12, location: "Istanbul, Turkey"),
        Forecast(date: .now, weather: .windy, probability: 0, temperature: 12, high: 12, low: 4, location: "Geneva, Switzerland"),
        Forecast(date: .now, weather: .stormy, probability: 0, temperature: 14, high: 25, low: 6, location: "Montreal, Canada"),
        Forecast(date: .now, weather: .tornado, probability: 0, temperature: 11, high: 14, low: 9, location: "Boston, United States")
    ]
}
