//
//  UINavigationController.swift
//  HealthyHabitsTest
//
//  Created by Владимир Иванов on 03.08.2024.
//

import UIKit

extension UINavigationController {
    // Remove back button text
    open override func viewWillLayoutSubviews() {
        navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        navigationBar.topItem?.backBarButtonItem?.tintColor = UIColor(asset: .textColor)
    }
}
