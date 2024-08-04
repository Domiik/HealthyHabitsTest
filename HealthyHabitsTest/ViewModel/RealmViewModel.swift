//
//  RealmViewModel.swift
//  HealthyHabitsTest
//
//  Created by Владимир Иванов on 04.08.2024.
//

import RealmSwift
import SwiftUI

final class RealmViewModel: ObservableObject {
    
    private var realm: Realm
    @Published var userSettings: RealmModel?
    
    init() {
        realm = try! Realm()
        fetchSettings()
    }
    
    func fetchSettings() {
        userSettings = realm.objects(RealmModel.self).first
    }
    
    func saveGender(gender: String) {
        if let existingSettings = realm.objects(RealmModel.self).first {
            try! realm.write {
                existingSettings.gender = gender
            }
        } else {
            let newSettings = RealmModel()
            newSettings.gender = gender
            try! realm.write {
                realm.add(newSettings)
            }
        }
        fetchSettings()
    }
    
    
    func saveBackground(background: String) {
        if let existingSettings = realm.objects(RealmModel.self).first {
            try! realm.write {
                existingSettings.backgroundColor = background
            }
        } else {
            let newSettings = RealmModel()
            newSettings.backgroundColor = background
            try! realm.write {
                realm.add(newSettings)
            }
        }
        fetchSettings()
    }
    
    func saveCategory(category: String) {
        if let existingSettings = realm.objects(RealmModel.self).first {
            try! realm.write {
                existingSettings.category = category
            }
        } else {
            let newSettings = RealmModel()
            newSettings.category = category
            try! realm.write {
                realm.add(newSettings)
            }
        }
        fetchSettings()
    }
}
