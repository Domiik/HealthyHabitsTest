//
//  SettingsViewModel.swift
//  HealthyHabitsTest
//
//  Created by Владимир Иванов on 03.08.2024.
//

import Foundation

final class SettingsViewModel: ObservableObject {
    
    let arrayData = [
        DataType(id: 1, name: L10n.category),
        DataType(id: 2, name: L10n.background),
        DataType(id: 3, name: L10n.gender),
        DataType(id: 4, name: L10n.languageSelection)
    ]
    
}
