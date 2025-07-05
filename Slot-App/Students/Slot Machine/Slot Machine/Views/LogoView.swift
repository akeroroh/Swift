//
//  LogoView.swift
//  Slot Machine
//
//  Created by 진아현 on 7/5/25.
//

import SwiftUI

struct LogoView: View {
    //MARK: - PROPERTIES
    
    
    //MARK: -  BODY
    var body: some View {
        Image("gfx-slot-machine")
            .resizable()
            .scaledToFit()
            .frame(minWidth: 256, idealWidth: 300, maxWidth: 320, minHeight: 112, idealHeight: 130, maxHeight: 140, alignment: .center)
            .padding(.horizontal)
            .layoutPriority(1)
            .modifier(ShadowModifier())
    }
}

#Preview {
    LogoView()
}
