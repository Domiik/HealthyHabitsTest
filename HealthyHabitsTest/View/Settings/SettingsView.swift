//
//  SettingsView.swift
//  HealthyHabitsTest
//
//  Created by Владимир Иванов on 03.08.2024.
//

import SwiftUI

struct SettingsView: View {
    @StateObject private var viewModel = SettingsViewModel()
    @State private var isShowingDetailView = false
    
    var body: some View {
            List {
                Section {
                    ForEach(viewModel.arrayData, id: \.id) { data in
                        NavigationLink(destination: destinationView(for: data)) {
                            SettingsCell(nameAccount: data.name, image: .data)
                        }
                    }
                }
                .navigationTitle(L10n.settings)
            }
    }
    
    private func destinationView(for data: DataType) -> AnyView {
            switch data.id {
            case 1:
                return AnyView(CategoryView())
            case 2:
                return AnyView(BackgroundView())
            case 3:
                return AnyView(GenderView())
            case 4:
                return AnyView(LanguageView())
            default:
                return AnyView(BackgroundView())
            }
        }
}

