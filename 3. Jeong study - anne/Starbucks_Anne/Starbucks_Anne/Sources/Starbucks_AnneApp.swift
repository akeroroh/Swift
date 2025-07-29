//
//  Starbucks_AnneApp.swift
//  Starbucks_Anne
//
//  Created by 진아현 on 7/8/25.
//

import SwiftUI

@main
struct Starbucks_AnneApp: App {
    init() {
        shopViewModel = .init()
    }
    
    //MARK: - PROPERTIES
    @State var shopViewModel: ShopViewModel
    
    //MARK: - BODY
    var body: some Scene {
        WindowGroup {
            TabBarView(shopViewModel: shopViewModel)
        }
    }
}
