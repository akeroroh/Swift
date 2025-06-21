//
//  WishModel.swift
//  Wishlist
//
//  Created by 진아현 on 6/21/25.
//

import Foundation
import SwiftData

@Model
class Wish {
    var title: String
    
    init(title: String) {
        self.title = title
    }
}
