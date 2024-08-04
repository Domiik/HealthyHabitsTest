//
//  CategorySelectionView.swift
//  HealthyHabitsTest
//
//  Created by Владимир Иванов on 03.08.2024.
//

import SwiftUI

struct CategorySelectionView: View {
    @StateObject private var viewModel = RealmViewModel()
    @State private var selectedCategory: String? = nil
    var onContinue: () -> Void
    
    var body: some View {
        VStack {
            Text(L10n.selectedCategory)
                .font(AppFont.title1.font)
                .foregroundStyle(Color(asset: .textColor))
                .bold()
                .padding(.horizontal)
            
            VStack(spacing: 15) {
                OnboardingButton(action: { selectedCategory = "Love" },
                                 isSelected: selectedCategory == "Love",
                                 title: L10n.love,
                                 selectedColor: Color(asset: .basicColor),
                                 unselectedColor: Color(asset: .grayColor))
                    .frame(maxWidth: .infinity)
                
                OnboardingButton(action: { selectedCategory = "Friends" },
                                 isSelected: selectedCategory == "Friends",
                                 title: L10n.friendship,
                                 selectedColor: Color(asset: .basicColor),
                                 unselectedColor: Color(asset: .grayColor))
                    .frame(maxWidth: .infinity)
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 40)
            .frame(maxWidth: .infinity)
            
            Button(action: {
                if let selectedCategory = selectedCategory {
                    viewModel.saveCategory(category: selectedCategory)
                }
                onContinue()
            }) {
                Text(L10n.continueButton)
                    .font(AppFont.headLine.font)
                    .foregroundColor(Color(asset: .whiteText))
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(selectedCategory != nil ? Color(asset: .basicColor) : Color(asset: .grayColor))
                    .cornerRadius(10)
            }
            .disabled(selectedCategory == nil)
            .padding(.horizontal, 20)
        }
        .padding()
    }
}

