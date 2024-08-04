//
//  ContentView.swift
//  HealthyHabitsTest
//
//  Created by Владимир Иванов on 01.08.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .onAppear {
            let defaults = UserDefaults.standard
            defaults.removeObject(forKey: "hasCompletedOnboarding")
            defaults.synchronize()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
