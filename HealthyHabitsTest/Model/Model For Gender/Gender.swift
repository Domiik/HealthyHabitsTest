//
//  Gender.swift
//  HealthyHabitsTest
//
//  Created by Владимир Иванов on 03.08.2024.
//

import SwiftUI

struct Gender: Identifiable {
    let id: Int
    let image: Image.Assets
    let name: String
    let nameRealm: String
    var isSelected: Bool
}
