//
//  ThemeSettings.swift
//  Todo
//
//  Created by 진아현 on 7/6/25.
//

import SwiftUI

//MARK: - THEME CLASS
class ThemeSettings: ObservableObject {
    @Published var themeSettings: Int = UserDefaults.standard.integer(forKey: "Theme") {
        didSet {
            UserDefaults.standard.set(self.themeSettings, forKey: "Theme")
        }
    }
}
