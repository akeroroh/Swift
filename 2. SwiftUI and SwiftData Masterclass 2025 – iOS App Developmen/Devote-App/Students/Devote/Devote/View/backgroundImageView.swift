//
//  backgroundImageView.swift
//  Devote
//
//  Created by 진아현 on 6/30/25.
//

import SwiftUI

struct backgroundImageView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        Image("rocket")
            .antialiased(true)
            .resizable()
            .scaledToFill()
            .ignoresSafeArea(.all)
    }
}

#Preview {
    backgroundImageView()
}
