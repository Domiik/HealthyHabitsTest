//
//  GenderViewModel.swift
//  HealthyHabitsTest
//
//  Created by Владимир Иванов on 03.08.2024.
//

import RealmSwift
import SwiftUI

final class GenderViewModel: ObservableObject {
    
    private var realm: Realm
    
    @Published var genderData = [
        Gender(id: 1, image: .male, name: L10n.male, nameRealm: "male" , isSelected: false),
        Gender(id: 2, image: .female, name: L10n.female, nameRealm: "female" , isSelected: false)
    ]
    
    
    init() {
        realm = try! Realm()
        loadGender()
    }
    
    func loadGender() {
        if let savedSettings = realm.objects(RealmModel.self).first {
            for (index, gender) in genderData.enumerated() {
                if gender.nameRealm == savedSettings.gender {
                    genderData[index].isSelected = true
                } else {
                    genderData[index].isSelected = false
                }
            }
        }
    }
    
    func saveGender(_ gender: Gender) {
        try! realm.write {
            if let savedSettings = realm.objects(RealmModel.self).first {
                savedSettings.gender = gender.nameRealm
            } else {
                let newSettings = RealmModel()
                newSettings.gender = gender.nameRealm
                realm.add(newSettings)
            }
        }
        
        loadGender()
    }
    
}
