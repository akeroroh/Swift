//
//  WishlistApp.swift
//  Wishlist
//
//  Created by 진아현 on 6/21/25.
//

import SwiftUI
import SwiftData

@main
struct WishlistApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Wish.self)
        }
    }
}
