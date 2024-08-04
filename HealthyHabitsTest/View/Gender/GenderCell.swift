//
//  GenderCell.swift
//  HealthyHabitsTest
//
//  Created by Владимир Иванов on 03.08.2024.
//

import SwiftUI

struct GenderCell: View {
    
    var gender: Gender
    var onToggle: (Gender) -> Void
    var image: String
    
    
    var body: some View {
        Button(action: {
            onToggle(gender)
        }) {
            HStack {
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color(asset: .textColor))
                Text(gender.name)
                    .font(AppFont.subLine.font)
                    .foregroundColor(Color(asset: .textColor))
                Spacer()
                Image(system: gender.isSelected ? .checkmark : .cirle)
                    .foregroundColor(Color(asset: .whiteText))
                    .padding(.trailing, 10)
                
            }
            .padding()
            .background(Rectangle().fill(Color(asset: .cellColor)).frame(maxWidth: .infinity, maxHeight: 120) .cornerRadius(15) .shadow(radius: 5))
            
        }   
    }
}
