//
//  Watch_ListApp.swift
//  Watch List
//
//  Created by 진아현 on 6/22/25.
//

import SwiftUI
import SwiftData

@main
struct Watch_ListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Movie.self)
        }
    }
}
