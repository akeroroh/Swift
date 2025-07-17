//
//  SwiftUIView.swift
//  Starbucks_Anne
//
//  Created by 진아현 on 7/18/25.
//

import SwiftUI

struct CircleImageCard: View {
    //MARK: - PROPERTIES
    var name: String
    var image: String
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Image(image)
            
            Text(name)
                .font(.mainTextSemiBold14)
                .foregroundStyle(Color.black02)
        }
    }
}
