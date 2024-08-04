//
//  BackgroundViewModel.swift
//  HealthyHabitsTest
//
//  Created by Владимир Иванов on 03.08.2024.
//

import RealmSwift
import SwiftUI
    
final class BackgroundViewModel: ObservableObject {
    
    private var realm: Realm
    
    @Published var backgroundData = [
        Background(id: 1, color: .blueColor, colorRealm: "Blue", isSelected: false),
        Background(id: 2, color: .redColor, colorRealm: "Red", isSelected: false)
    ]
    
    init() {
        realm = try! Realm()
        loadSelectedColor()
    }
    
    func loadSelectedColor() {
        if let savedSettings = realm.objects(RealmModel.self).first {
            for (index, color) in backgroundData.enumerated() {
                if color.colorRealm == savedSettings.backgroundColor {
                    backgroundData[index].isSelected = true
                } else {
                    backgroundData[index].isSelected = false
                }
            }
        }
    }
    

    func saveColor(_ color: Background) {
        try! realm.write {
            if let savedSettings = realm.objects(RealmModel.self).first {
                savedSettings.backgroundColor = color.colorRealm
            } else {
                let newSettings = RealmModel()
                newSettings.backgroundColor = color.colorRealm
                realm.add(newSettings)
            }
        }
        

        loadSelectedColor()
    }
    
}
