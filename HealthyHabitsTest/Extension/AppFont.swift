//
//  AppFont.swift
//  HealthyHabitsTest
//
//  Created by Владимир Иванов on 03.08.2024.
//

import SwiftUI

public enum AppFont {
    case largeTitle
    case title1
    case title2
    case title3
    case body
    case subLine
    case headLine
    case footNote
    case caption
}

public extension AppFont {
    var font: Font {
        switch self {
        case .largeTitle:
            return .largeTitle
        case .title1:
            return .title
        case .title2:
            return .title2
        case .title3:
            return .title3
        case .headLine:
            return .headline
        case .body:
            return .body
        case .subLine:
            return .subheadline
        case .footNote:
            return .footnote
        case .caption:
            return .caption
        }
    }
}



