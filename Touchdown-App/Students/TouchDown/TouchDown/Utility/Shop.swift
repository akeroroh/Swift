//
//  Shop.swift
//  TouchDown
//
//  Created by 진아현 on 6/29/25.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
