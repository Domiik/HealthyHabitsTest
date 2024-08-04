//
//  Texts.swift
//  HealthyHabitsTest
//
//  Created by Владимир Иванов on 04.08.2024.
//

import Foundation

enum ChangeCategory: String {
    case love = "Love"
    case friends = "Friends"
}

// Константы для текстов в категории "Love"
struct LoveTexts {
    static let afLove = [L10n.Af1.love, L10n.Af2.love, L10n.Af3.love, L10n.Af4.love, L10n.Af5.love, L10n.Af6.love, L10n.Af7.love, L10n.Af8.love, L10n.Af9.love, L10n.Af10.love]
}

// Константы для текстов в категории "Friends"
struct FriendsTexts {
    static let afFriends = [L10n.Af1.friends, L10n.Af2.friends, L10n.Af3.friends, L10n.Af4.friends, L10n.Af5.friends, L10n.Af6.friends, L10n.Af7.friends, L10n.Af8.friends, L10n.Af9.friends, L10n.Af10.friends]

}
