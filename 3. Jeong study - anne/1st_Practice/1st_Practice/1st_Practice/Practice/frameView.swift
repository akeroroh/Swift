//
//  frameView.swift
//  AnneApp
//
//  Created by 진아현 on 6/29/25.
//

import SwiftUI

struct frameView: View {
    var body: some View {
        Text("Resizable Text")
//            .frame(minWidth: 100, idealWidth: 200, maxWidth: 300,
//                   minHeight: 50, maxHeight: 150)
//            .frame(maxWidth: .infinity)
            .frame(maxHeight: .infinity)
            .background(Color.green)
    }
}

struct frameView_Preview: PreviewProvider {
    static var devices = ["iPhone 11", "iPhone 16 Pro"]
    
    static var previews: some View {
        ForEach(devices, id: \.self) { device in
            frameView()
                .previewDevice(PreviewDevice(rawValue: device))
                .previewDisplayName(device)
        }
    }
}
