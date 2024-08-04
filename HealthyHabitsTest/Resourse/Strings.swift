// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum L10n {
  /// Background
  internal static let background = L10n.tr("Localizable", "background", fallback: "Background")
  /// Blue
  internal static let blue = L10n.tr("Localizable", "blue", fallback: "Blue")
  /// Category
  internal static let category = L10n.tr("Localizable", "category", fallback: "Category")
  /// Continue
  internal static let continueButton = L10n.tr("Localizable", "continue_button", fallback: "Continue")
  /// Female
  internal static let female = L10n.tr("Localizable", "female", fallback: "Female")
  /// Friendship
  internal static let friendship = L10n.tr("Localizable", "friendship", fallback: "Friendship")
  /// Gender
  internal static let gender = L10n.tr("Localizable", "gender", fallback: "Gender")
  /// This will help you choose content just for you.
  internal static let genderSubtitle = L10n.tr("Localizable", "gender_subtitle", fallback: "This will help you choose content just for you.")
  /// Language Selection
  internal static let languageSelection = L10n.tr("Localizable", "language_selection", fallback: "Language Selection")
  /// Love
  internal static let love = L10n.tr("Localizable", "love", fallback: "Love")
  /// Male
  internal static let male = L10n.tr("Localizable", "male", fallback: "Male")
  /// Red
  internal static let red = L10n.tr("Localizable", "red", fallback: "Red")
  /// What is your gender?
  internal static let selecteGender = L10n.tr("Localizable", "selecte_gender", fallback: "What is your gender?")
  /// Select background color?
  internal static let selectedBackground = L10n.tr("Localizable", "selected_background", fallback: "Select background color?")
  /// Select a category?
  internal static let selectedCategory = L10n.tr("Localizable", "selected_category", fallback: "Select a category?")
  /// Settings
  internal static let settings = L10n.tr("Localizable", "settings", fallback: "Settings")
  internal enum Af1 {
    /// I am surrounded by supportive and loving friends
    internal static let friends = L10n.tr("Localizable", "af1.friends", fallback: "I am surrounded by supportive and loving friends")
    /// Localizable.strings
    ///   HealthyHabitsTest
    /// 
    ///   Created by Владимир Иванов on 03.08.2024.
    internal static let love = L10n.tr("Localizable", "af1.love", fallback: "I am worthy of love and deserve to receive love in abundance")
  }
  internal enum Af10 {
    /// I am a magnet for genuine and lasting friendships
    internal static let friends = L10n.tr("Localizable", "af10.friends", fallback: "I am a magnet for genuine and lasting friendships")
    /// I am a magnet for loving and fulfilling relationships
    internal static let love = L10n.tr("Localizable", "af10.love", fallback: "I am a magnet for loving and fulfilling relationships")
  }
  internal enum Af2 {
    /// I attract positive and loyal friendships into my life
    internal static let friends = L10n.tr("Localizable", "af2.friends", fallback: "I attract positive and loyal friendships into my life")
    /// My heart is open to giving and receiving love
    internal static let love = L10n.tr("Localizable", "af2.love", fallback: "My heart is open to giving and receiving love")
  }
  internal enum Af3 {
    /// My friends and I share mutual respect and trust
    internal static let friends = L10n.tr("Localizable", "af3.friends", fallback: "My friends and I share mutual respect and trust")
    /// I am surrounded by love every day and in every way
    internal static let love = L10n.tr("Localizable", "af3.love", fallback: "I am surrounded by love every day and in every way")
  }
  internal enum Af4 {
    /// I am a kind and caring friend, and I receive the same in return
    internal static let friends = L10n.tr("Localizable", "af4.friends", fallback: "I am a kind and caring friend, and I receive the same in return")
    /// I attract love and loving relationships into my life
    internal static let love = L10n.tr("Localizable", "af4.love", fallback: "I attract love and loving relationships into my life")
  }
  internal enum Af5 {
    /// My friendships are filled with joy, laughter, and understanding
    internal static let friends = L10n.tr("Localizable", "af5.friends", fallback: "My friendships are filled with joy, laughter, and understanding")
    /// Love flows to me and through me effortlessly
    internal static let love = L10n.tr("Localizable", "af5.love", fallback: "Love flows to me and through me effortlessly")
  }
  internal enum Af6 {
    /// I am grateful for the amazing friends in my life
    internal static let friends = L10n.tr("Localizable", "af6.friends", fallback: "I am grateful for the amazing friends in my life")
    /// I radiate love and others reflect love back to me
    internal static let love = L10n.tr("Localizable", "af6.love", fallback: "I radiate love and others reflect love back to me")
  }
  internal enum Af7 {
    /// I nurture and cherish my friendships
    internal static let friends = L10n.tr("Localizable", "af7.friends", fallback: "I nurture and cherish my friendships")
    /// My relationships are filled with love, happiness, and respect
    internal static let love = L10n.tr("Localizable", "af7.love", fallback: "My relationships are filled with love, happiness, and respect")
  }
  internal enum Af8 {
    /// I attract friends who support and uplift me
    internal static let friends = L10n.tr("Localizable", "af8.friends", fallback: "I attract friends who support and uplift me")
    /// I am grateful for the love that surrounds me
    internal static let love = L10n.tr("Localizable", "af8.love", fallback: "I am grateful for the love that surrounds me")
  }
  internal enum Af9 {
    /// My friends and I grow together in love and harmony
    internal static let friends = L10n.tr("Localizable", "af9.friends", fallback: "My friends and I grow together in love and harmony")
    /// Love comes to me easily and effortlessly
    internal static let love = L10n.tr("Localizable", "af9.love", fallback: "Love comes to me easily and effortlessly")
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
