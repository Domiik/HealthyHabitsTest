//
//  CategoryView.swift
//  HealthyHabitsTest
//
//  Created by Владимир Иванов on 03.08.2024.
//

import SwiftUI

struct CategoryView: View {
    @StateObject private var viewModel = CategoryViewModel()
       
       var body: some View {
           ScrollView {
               LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))]) {
                   ForEach(viewModel.categoryData) { category in
                       CategoryCell(category: category, onToggle: { selectedCategory in
                           viewModel.saveCategory(selectedCategory)
                       }, image: category.image.rawValue)
                   }
               }
               .padding()
           }
           .navigationTitle(L10n.category)
       }
}


#Preview {
    CategoryView()
}
