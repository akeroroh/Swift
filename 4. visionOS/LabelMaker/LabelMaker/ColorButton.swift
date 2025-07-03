//
//  ColorButton.swift
//  LabelMaker
//
//  Created by 진아현 on 7/3/25.
//

import SwiftUI

struct ColorButton: View {
    @State var color: Color
    var selectColor: (() -> Void)
    
    var body: some View {
        Button {
            selectColor()
        } label: {
            Circle()
                .foregroundStyle(color)
                .frame(height: 34)
        }
        .buttonBorderShape(.circle)
    }
}

#Preview {
    ColorButton(color: .cyan) {
        
    }
}
