//
//  SettingCell.swift
//  HealthyHabitsTest
//
//  Created by Владимир Иванов on 03.08.2024.
//

import SwiftUI

struct SettingsCell: View {
    
    @State var nameAccount: String
    @State var image: Image.SystemAssets

    var body: some View {
        HStack {
            Image(system: image)
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .foregroundColor(Color(asset: .textColor))
            Text(nameAccount)
                .font(AppFont.headLine.font)
                .foregroundColor(Color(asset: .textColor))
            Spacer()
        }
        .padding(4)
    }
    
}
