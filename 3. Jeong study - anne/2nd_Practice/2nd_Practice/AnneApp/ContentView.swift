//
//  ContentView.swift
//  AnneApp
//
//  Created by 진아현 on 6/27/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("dd")
    }
}

//#Preview {
//    ContentView()
//}

struct ContentView_Preview: PreviewProvider {
    static var devices = ["iPhone 11", "iPhone 16 Pro"]
    
    static var previews: some View {
        ForEach(devices, id: \.self) { device in
            ContentView()
                .previewDevice(PreviewDevice(rawValue: device))
                .previewDisplayName(device)
        }
    }
}
