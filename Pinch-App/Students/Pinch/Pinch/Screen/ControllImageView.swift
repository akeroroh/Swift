//
//  ControllImageView.swift
//  Pinch
//
//  Created by 진아현 on 6/23/25.
//

import SwiftUI

struct ControllImageView: View {
    let icon: String
    
    var body: some View {
        Image(systemName: icon)
            .font(.system(size: 36))
    }
}

#Preview {
    ControllImageView(icon: "minus.magnifyingglass")
        .preferredColorScheme(.dark)
        .previewLayout(.sizeThatFits)
        .padding()
}
