//
//  CoffeeDetailModel.swift
//  Starbucks_Anne
//
//  Created by 진아현 on 7/17/25.
//

import Foundation

struct CoffeeDetailModel: Identifiable, Hashable {
    let id = UUID()
    let image: String
    let name: String
    
    let backgroundImage: String
    let engName: String
    let description: String
    let price: Int
    let hotIce: hotIce
    
    enum hotIce {
        case hotOnly
        case iceOnly
        case hotBoth
        case iceBoth
    }
}
