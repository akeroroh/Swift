//
//  ForEachRangeView.swift
//  3rd Practi e
//
//  Created by 진아현 on 7/15/25.
//

import SwiftUI

struct ForEachRangeView: View {
    var body: some View {
        VStack {
            ForEach(1..<6) { index in
                Text("항목 \(index)")
                    .font(.headline)
            }
        }
    }
}

#Preview {
    ForEachRangeView()
}
