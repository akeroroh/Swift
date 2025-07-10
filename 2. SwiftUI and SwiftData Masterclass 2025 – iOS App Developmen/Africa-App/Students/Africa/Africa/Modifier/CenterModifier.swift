//
//  CenterModifier.swift
//  Africa
//
//  Created by 진아현 on 6/27/25.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
