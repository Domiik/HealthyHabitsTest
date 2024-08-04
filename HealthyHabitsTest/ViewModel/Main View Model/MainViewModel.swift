//
//  MainViewModel.swift
//  HealthyHabitsTest
//
//  Created by Владимир Иванов on 03.08.2024.
//

import SwiftUI

final class MainViewModel: ObservableObject {
    
    enum State {
        case idle
        case loading
        case end
    }
    
    @Published var backgroundColor: Color = Color(asset: .redColor)
    @Published private(set) var state = State.idle
    @Published var texts: [String] = []
    @Published var currentIndex: Int = 0
    private var realmViewModel = RealmViewModel()
    
    func showNextText() {
        currentIndex = (currentIndex + 1) % texts.count
    }
    
    func showPreviousText() {
        currentIndex = (currentIndex - 1 + texts.count) % texts.count
    }
    
    func getCurrentText() -> String {
        return texts[currentIndex]
    }
    
    func getNextText() -> String {
        return texts[(currentIndex + 1) % texts.count]
    }
    
    func getPreviousText() -> String {
        return texts[(currentIndex - 1 + texts.count) % texts.count]
    }
    
    
    func getText() {
        self.state = .loading
        guard let categoryString = realmViewModel.userSettings?.category,
              let category = ChangeCategory(rawValue: categoryString) else {
            return
        }
        switch category {
        case .love:
            texts = LoveTexts.afLove
        case .friends:
            texts = FriendsTexts.afFriends
        }
        self.state = .end
    }
    
    func getColor() {
        self.state = .loading
        guard let backgroundString = realmViewModel.userSettings?.backgroundColor,
              let background = ChangeBackground(rawValue: backgroundString) else {
            return
        }
        switch background {
        case .blue:
            backgroundColor = ConstantsColors.blue
        case .red:
            backgroundColor = ConstantsColors.red
        }
        self.state = .end
    }
}
