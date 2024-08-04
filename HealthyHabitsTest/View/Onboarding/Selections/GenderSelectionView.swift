//
//  GenderSelectionView.swift
//  HealthyHabitsTest
//
//  Created by Владимир Иванов on 03.08.2024.
//

import SwiftUI

struct GenderSelectionView: View {
    @StateObject private var viewModel = RealmViewModel()
    @State private var selectedGender: String? = nil
    var onContinue: () -> Void
    
    var body: some View {
        VStack {
            Text(L10n.selecteGender)
                .font(AppFont.title1.font)
                .foregroundStyle(Color(asset: .textColor))
                .bold()
                .padding(.horizontal)
            
            Text(L10n.genderSubtitle)
                .font(AppFont.subLine.font)
                .foregroundStyle(Color(asset: .grayColor))
                .padding(.horizontal)
            
            VStack(spacing: 15) {
                OnboardingButton(action: { selectedGender = "male" },
                                 isSelected: selectedGender == "male",
                                 title: L10n.male,
                                 selectedColor: Color(asset: .basicColor),
                                 unselectedColor: Color(asset: .grayColor))
                    .frame(maxWidth: .infinity)
                
                OnboardingButton(action: { selectedGender = "female" },
                                 isSelected: selectedGender == "female",
                                 title: L10n.female,
                                 selectedColor: Color(asset: .basicColor),
                                 unselectedColor: Color(asset: .grayColor))
                    .frame(maxWidth: .infinity)
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 40)
            
            Button(action: {
                if let selectedGender = selectedGender {
                    viewModel.saveGender(gender: selectedGender)
                }
                onContinue()
            }) {
                Text(L10n.continueButton)
                    .font(AppFont.headLine.font)
                    .foregroundColor(Color(asset: .whiteText))
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(selectedGender != nil ? Color(asset: .basicColor) : Color(asset: .grayColor))
                    .cornerRadius(10)
            }
            .disabled(selectedGender == nil)
            .padding(.horizontal, 20)
        }
        .padding()
    }
}

