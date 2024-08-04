//
//  Image.swift
//  HealthyHabitsTest
//
//  Created by Владимир Иванов on 03.08.2024.
//


import SwiftUI

extension Image {
    
    enum Assets: String, RawRepresentable {
        case male
        case female
        case love
        case friends
    }
    
    enum SystemAssets: String, RawRepresentable {
        case setting = "gear"
        case data = "tray.circle"
        case checkmark = "checkmark.circle.fill"
        case cirle = "circle"
    }
    
    init(asset: Image.Assets) {
        self.init(asset.rawValue)
    }
    
    init(system: Image.SystemAssets){
        self.init(systemName: system.rawValue)
    }
}

