//
//  _th_PracticeApp.swift
//  4th Practice
//
//  Created by 진아현 on 7/19/25.
//

import SwiftUI
import SwiftData

@main
struct _th_PracticeApp: App {
    var body: some Scene {
        WindowGroup {
            ReceiptsView()
        }
        .modelContainer(for: ReceiptsModel.self)
    }
}
