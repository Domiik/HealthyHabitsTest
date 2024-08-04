//
//  HealthyHabitsTestApp.swift
//  HealthyHabitsTest
//
//  Created by Владимир Иванов on 01.08.2024.
//

import SwiftUI

@main
struct HealthyHabitsTestApp: App {
    @State private var isOnboardingCompleted: Bool = OnboardingManager.hasCompletedOnboarding
    
    var body: some Scene {
        WindowGroup {
            if isOnboardingCompleted {
                MainView()
            } else {
                OnboardingView(isOnboardingCompleted: $isOnboardingCompleted)
            }
        }
    }
}
