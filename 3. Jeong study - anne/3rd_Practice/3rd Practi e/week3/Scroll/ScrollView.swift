//
//  ScrollView.swift
//  3rd Practi e
//
//  Created by 진아현 on 7/15/25.
//

import SwiftUI

struct ScrollViews: View {
    let rows = Array(repeating: GridItem(.fixed(300)), count: 2)

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ForEach(1...50, id: \.self) { index in
                    Text("Item \(index)")
                        .frame(maxWidth: .infinity)
                        .background(Color.gray.opacity(0.2))
                }
            }
        }
        .scrollIndicators(.visible, axes: .vertical)
        .contentMargins(.horizontal, 100, for: .scrollIndicators)
//        .safeAreaPadding(.horizontal)
    }
}

#Preview {
    ScrollViews()
}
