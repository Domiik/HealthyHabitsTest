//
//  BackgroundColorSelectionView.swift
//  HealthyHabitsTest
//
//  Created by Владимир Иванов on 03.08.2024.
//

import SwiftUI

struct BackgroundColorSelectionView: View {
    @StateObject private var viewModel = RealmViewModel()
    @State private var selectedBackground: String? = nil
    var onContinue: () -> Void
    
    var body: some View {
        VStack {
            Text(L10n.selectedBackground)
                .font(AppFont.title1.font)
                .foregroundStyle(Color(asset: .textColor))
                .bold()
                .padding(.horizontal)
            
            VStack(spacing: 15) {
                OnboardingButton(action: { selectedBackground = "Blue" },
                                 isSelected: selectedBackground == "Blue",
                                 title: L10n.blue,
                                 selectedColor: Color(asset: .basicColor),
                                 unselectedColor: Color(asset: .grayColor))
                .frame(maxWidth: .infinity)
                
                OnboardingButton(action: { selectedBackground = "Red" },
                                 isSelected: selectedBackground == "Red",
                                 title: L10n.red,
                                 selectedColor: Color(asset: .basicColor),
                                 unselectedColor: Color(asset: .grayColor))
                .frame(maxWidth: .infinity)
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 40)
            
            Button(action: {
                if let selectedBackground = selectedBackground {
                    viewModel.saveBackground(background: selectedBackground)
                }
                onContinue()
            }) {
                Text(L10n.continueButton)
                    .font(AppFont.headLine.font)
                    .foregroundColor(Color(asset: .whiteText))
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(selectedBackground != nil ? Color(asset: .basicColor) : Color(asset: .grayColor))
                    .cornerRadius(10)
            }
            .disabled(selectedBackground == nil)
            .padding(.horizontal, 20)
        }
        .padding()
    }
}

