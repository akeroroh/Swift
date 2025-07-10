//
//  TouchDownApp.swift
//  TouchDown
//
//  Created by 진아현 on 6/29/25.
//

import SwiftUI

@main
struct TouchDownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
