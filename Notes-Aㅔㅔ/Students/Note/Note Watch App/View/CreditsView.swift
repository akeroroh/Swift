//
//  CreditsView.swift
//  Note Watch App
//
//  Created by 진아현 on 7/1/25.
//

import SwiftUI

struct CreditsView: View {
    //MARK: - PROPERTIES
    @State private var randomNumber: Int = Int.random(in: 1..<4)
    
    private var randomImage: String {
        return "developer-no\(randomNumber)"
    }
    
    //MARK: - BODY
    var body: some View {
        VStack(spacing: 3) {
            //MARK: - PROFILE IMAGE
            Image(randomImage)
                .resizable()
                .scaledToFit()
                .layoutPriority(1)
            //MARK: - HEADER
            HeaderView(title: "Credits")
            
            //MARK: - CONTENT
            Text("Robert Petras")
                .foregroundColor(.primary)
                .fontWeight(.bold)
            
            Text("Developer")
                .font(.footnote)
                .foregroundColor(.secondary)
                .fontWeight(.light)
        }
    }
}

#Preview {
    CreditsView()
}
