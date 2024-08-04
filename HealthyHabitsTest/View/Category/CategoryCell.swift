//
//  CategoryCell.swift
//  HealthyHabitsTest
//
//  Created by Владимир Иванов on 03.08.2024.
//

import SwiftUI

struct CategoryCell: View {
    var category: Category
    var onToggle: (Category) -> Void
    var image: String
    
    var body: some View {
          Button(action: {
              onToggle(category)
          }) {
              ZStack(alignment: .bottomLeading) {
                  Image(image)
                      .resizable()
                      .aspectRatio(contentMode: .fill)
                      .frame(width: 150, height: 150)
                      .clipped()
                      .cornerRadius(10)
                  
                  HStack {
                      Text(category.name)
                          .font(AppFont.headLine.font)
                          .foregroundColor(Color(asset: .whiteText))
                          .padding([.leading, .bottom], 10)
                      Spacer()
                      Image(system: category.isSelected ? .checkmark : .cirle)
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

