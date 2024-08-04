//
//  LanguageView.swift
//  HealthyHabitsTest
//
//  Created by Владимир Иванов on 03.08.2024.
//

import SwiftUI

struct LanguageView: View {
    var body: some View {
        VStack { }
        .onAppear {
            guard let settingsURL = URL(string: UIApplication.openSettingsURLString) else { return }
                   UIApplication.shared.open(settingsURL, options: [:], completionHandler: nil)
        }
    }
}

#Preview {
    LanguageView()
}
