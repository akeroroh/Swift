//
//  FruitModel.swift
//  Fructus
//
//  Created by 진아현 on 6/24/25.
//

import SwiftUI

//MARK: - FRUITS DATA MODEL
struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}

