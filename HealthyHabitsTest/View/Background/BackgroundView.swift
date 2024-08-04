//
//  BackgroundView.swift
//  HealthyHabitsTest
//
//  Created by Владимир Иванов on 03.08.2024.
//

import SwiftUI

struct BackgroundView: View {
    @StateObject private var viewModel = BackgroundViewModel()
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))]) {
                ForEach(viewModel.backgroundData) { data in
                    BackgroundCell(background: data, onToggle: { selectedBackground in
                        viewModel.saveColor(selectedBackground)
                    }, color: data.color)
                }
            }
            .padding()
        }
        .navigationTitle(L10n.background)
    }
}

#Preview {
    BackgroundView()
}
