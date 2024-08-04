//
//  CategoryViewModel.swift
//  HealthyHabitsTest
//
//  Created by Владимир Иванов on 03.08.2024.
//

import SwiftUI
import RealmSwift

final class CategoryViewModel: ObservableObject {
    
    private var realm: Realm
    
    @Published var categoryData = [
        Category(id: 1, name: L10n.love, nameRealm: "Love", image: .love, isSelected: false),
        Category(id: 2, name: L10n.friendship, nameRealm: "Friends", image: .friends, isSelected: false)
    ]
    
    init() {
        realm = try! Realm()
        loadSelectedCategory()
    }
    
    func loadSelectedCategory() {
        if let savedSettings = realm.objects(RealmModel.self).first {
            for (index, category) in categoryData.enumerated() {
                if category.nameRealm == savedSettings.category {
                    categoryData[index].isSelected = true
                } else {
                    categoryData[index].isSelected = false
                }
            }
        }
    }
    
    func saveCategory(_ category: Category) {
        try! realm.write {
            if let savedSettings = realm.objects(RealmModel.self).first {
                savedSettings.category = category.nameRealm
            } else {
                let newSettings = RealmModel()
                newSettings.category = category.nameRealm
                realm.add(newSettings)
            }
        }
        

        loadSelectedCategory()
    }
    
}
