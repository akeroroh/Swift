//
//  ShopViewModel.swift
//  Starbucks_Anne
//
//  Created by 진아현 on 7/29/25.
//

import Foundation

@Observable
class ShopViewModel {
    let shopAllProducts: [ShopModel] = ShopProducts.allLists
    let shopNewProducts: [ShopModel] = ShopProducts.newProducts
    let shopBestProducts: [ShopModel] = ShopProducts.bestProducts
}
