//
//  MessageView.swift
//  AnneApp
//
//  Created by 진아현 on 6/29/25.
//

import SwiftUI

struct MessageView: View {
    let message: String
    
    init(message: String) {
        self.message = message
    }
    
    var body: some View {
        Text(message)
            .font(.title)
            .foregroundStyle(Color.green)
    }
}
