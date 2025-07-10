//
//  FeatureItemView.swift
//  TouchDown
//
//  Created by 진아현 on 6/29/25.
//

import SwiftUI

struct FeatureItemView: View {
    //MARK: - PROPERTIES
    let player: Player
    
    //MARK: - BODY
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

#Preview {
    FeatureItemView(player: players[0])
        .previewLayout(.sizeThatFits)
        .padding()
        .background(colorBackground)
}
