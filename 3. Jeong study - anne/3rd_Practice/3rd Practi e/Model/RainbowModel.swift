//
//  RainbowModel.swift
//  3rd Practi e
//
//  Created by 진아현 on 7/16/25.
//

import Foundation
import SwiftUI

enum RainbowModel: CaseIterable {
    case red
    case orange
    case yellow
    case green
    case blue
    case indigo
    case purple
    
    func returnColor() -> Color {
        switch self {
        case .red:
            return Color("RainbowRed")
        case .orange:
            return Color("RainbowOrange")
        case .yellow:
            return Color("RainbowYellow")
        case .green:
            return Color("RainbowGreen")
        case .blue:
            return Color("RainbowBlue")
        case .indigo:
            return Color("RainbowPink")
        case .purple:
            return Color("RainbowPurple")
        }
    }
    
    func returnColorName() -> String {
        switch self {
        case .red:
            return "빨강"
        case .orange:
            return "주황"
        case .yellow:
            return "노랑"
        case .green:
            return "초록"
        case .blue:
            return "파랑"
        case .indigo:
            return "남색"
        case .purple:
            return "보라"
        }
    }
}
