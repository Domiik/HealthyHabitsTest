//
//  Category.swift
//  HealthyHabitsTest
//
//  Created by Владимир Иванов on 03.08.2024.
//

import SwiftUI

struct Category: Identifiable {
    let id: Int
    let name: String
    let nameRealm: String
    let image: Image.Assets
    var isSelected: Bool
}
