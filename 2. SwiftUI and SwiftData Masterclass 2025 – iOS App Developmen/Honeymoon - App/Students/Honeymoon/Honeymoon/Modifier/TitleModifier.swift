//
//  TitleModifier.swift
//  Honeymoon
//
//  Created by 진아현 on 7/7/25.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(Color.pink)
    }
}
