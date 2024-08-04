//
//  OnboardingView.swift
//  HealthyHabitsTest
//
//  Created by Владимир Иванов on 03.08.2024.
//

import SwiftUI

enum OnboardingScreen {
    case category
    case backgroundColor
    case gender
}

struct OnboardingView: View {
    
    @Binding var isOnboardingCompleted: Bool
    @State private var currentIndex = 0
    
    private let screens: [OnboardingScreen] = [
        .category,
        .backgroundColor,
        .gender
    ]
    
    var body: some View {
        VStack {
            switch screens[currentIndex] {
            case .category:
                CategorySelectionView(onContinue: goToNextScreen)
            case .backgroundColor:
                BackgroundColorSelectionView(onContinue: goToNextScreen)
            case .gender:
                GenderSelectionView(onContinue: completeOnboarding)
            }
        }
        
    }
    
    private func goToNextScreen() {
        if currentIndex < screens.count - 1 {
            currentIndex += 1
        }
    }
    
    private func completeOnboarding() {
        OnboardingManager.hasCompletedOnboarding = true
        isOnboardingCompleted = true
    }
}
