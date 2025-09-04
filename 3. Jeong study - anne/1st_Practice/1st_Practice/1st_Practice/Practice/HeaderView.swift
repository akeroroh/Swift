//
//  HeaderView.swift
//  AnneApp
//
//  Created by 진아현 on 6/29/25.
//

import SwiftUI

struct HeaderView: View {
    let text: String
    
    init(text: String) {
        self.text = text
    }
    
    var body: some View {
        Text(text)
            .foregroundStyle(Color.red)
            .font(.largeTitle)
    }
}
