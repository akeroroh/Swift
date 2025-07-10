//
//  ContentView.swift
//  Learn by Doing
//
//  Created by 진아현 on 7/2/25.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    var cards: [Card] = cardData
    
    //MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 20) {
                ForEach(cards) { item in
                    CardView(card: item)
                }
            }
            .padding(20)
        }
    }
}

#Preview {
    ContentView(cards: cardData)
}
