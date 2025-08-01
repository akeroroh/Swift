//
//  Starbucks_AnneApp.swift
//  Starbucks_Anne
//
//  Created by 진아현 on 7/8/25.
//

import SwiftUI
import SwiftData

@main
struct Starbucks_AnneApp: App {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some Scene {
        WindowGroup {
            TabBarView()
        }
        .modelContainer(for: ReceiptsModel.self)
    }
}
