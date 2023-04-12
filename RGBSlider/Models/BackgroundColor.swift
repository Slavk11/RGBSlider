//
//  BackgroundColor.swift
//  RGBSlider
//
//  Created by Сазонов Станислав on 11.04.2023.
//

import Foundation

struct BackgroundColor {
    var red: Double
    var green: Double
    var blue: Double
    
    static func getDefaultColors() -> BackgroundColor {
       BackgroundColor(
        red: 0,
        green: 0,
        blue: 0
        )
    }
}
