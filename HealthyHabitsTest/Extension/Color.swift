//
//  Color.swift
//  HealthyHabitsTest
//
//  Created by Владимир Иванов on 03.08.2024.
//

import SwiftUI


extension Color {
    enum Assets: String, RawRepresentable {
        case textColor
        case blueColor
        case redColor
        case cellColor
        case grayColor
        case basicColor
        case whiteText
    }
    
    init(asset: Color.Assets) {
        self.init(asset.rawValue)
    }
    
}


extension UIColor {
    convenience init(asset: Color.Assets) {
        self.init(named: asset.rawValue)!
    }
}
