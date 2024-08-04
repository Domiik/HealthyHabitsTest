//
//  RealmModel.swift
//  HealthyHabitsTest
//
//  Created by Владимир Иванов on 04.08.2024.
//

import RealmSwift
import Foundation

class RealmModel: Object {
    @Persisted(primaryKey: true) var id: String = UUID().uuidString
    @Persisted var category: String = ""
    @Persisted var backgroundColor: String = ""
    @Persisted var gender: String = ""
}
