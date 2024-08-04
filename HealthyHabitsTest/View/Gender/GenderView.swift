//
//  GenderView.swift
//  HealthyHabitsTest
//
//  Created by Владимир Иванов on 03.08.2024.
//

import SwiftUI

struct GenderView: View {
    @StateObject private var viewModel = GenderViewModel()
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(viewModel.genderData) { data in
                    GenderCell(gender: data, onToggle: { selectedGender in
                        viewModel.saveGender(selectedGender)
                    }, image: data.image.rawValue)
                }
            }
            .padding()
        }
        .navigationTitle(L10n.gender)
    }
}

#Preview {
    GenderView()
}
