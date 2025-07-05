//
//  RealView.swift
//  Slot Machine
//
//  Created by 진아현 on 7/5/25.
//

import SwiftUI

struct RealView: View {
    //MARK: - PROPERTIES
    
    
    //MARK: - BODY
    var body: some View {
        Image("gfx-reel")
            .resizable()
            .modifier(ImageModifier())
    }
}

#Preview {
    RealView()
}
