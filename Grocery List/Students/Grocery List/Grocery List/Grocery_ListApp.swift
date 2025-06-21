//
//  Grocery_ListApp.swift
//  Grocery List
//
//  Created by 진아현 on 6/21/25.
//

import SwiftUI
import SwiftData

@main
struct Grocery_ListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Item.self)
        }
    }
}
