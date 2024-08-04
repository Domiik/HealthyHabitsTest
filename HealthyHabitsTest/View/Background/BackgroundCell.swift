//
//  BackgroundCell.swift
//  HealthyHabitsTest
//
//  Created by Владимир Иванов on 03.08.2024.
//

import SwiftUI

struct BackgroundCell: View {
    var background: Background
    var onToggle: (Background) -> Void
    var color: Color.Assets
    
    var body: some View {
        Button(action: {
            onToggle(background)
        }) {
            ZStack(alignment: .bottomLeading) {
                Color(asset: color)
                    .frame(width: 150, height: 150)
                    .cornerRadius(10)
                
                HStack {
                    Spacer()
                    Image(system: background.isSelected ? .checkmark : .cirle)
                        .foregroundColor(Color(asset: .whiteText))
                        .padding([.trailing, .bottom], 10)
                }
                .background(
                    LinearGradient(gradient: Gradient(colors: [.black.opacity(0.6), .clear]),
                                   startPoint: .bottom, endPoint: .top)
                        .cornerRadius(10)
                )
            }
            .frame(width: 150, height: 150)
            .shadow(radius: 5)
        }
    }
}

