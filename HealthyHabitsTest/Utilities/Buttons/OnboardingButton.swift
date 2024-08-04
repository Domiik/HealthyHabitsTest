//
//  OnboardingButton.swift
//  HealthyHabitsTest
//
//  Created by Владимир Иванов on 05.08.2024.
//

import SwiftUI

struct OnboardingButton: View {
    let action: () -> Void
    let isSelected: Bool
    let title: String
    let selectedColor: Color
    let unselectedColor: Color
    
    var body: some View {
        Button(action: action) {
            HStack {
                Image(system: isSelected ? .checkmark : .cirle)
                    .foregroundColor(isSelected ? selectedColor : unselectedColor)
                    .font(AppFont.title3.font)
                Text(title)
                    .font(AppFont.title3.font)
                    .foregroundColor(Color(asset: .whiteText))
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(RoundedRectangle(cornerRadius: 10)
                .stroke(isSelected ? selectedColor : unselectedColor, lineWidth: 2))
        }
        .buttonStyle(PlainButtonStyle())
    }
}

