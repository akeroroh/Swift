//
//  Item.swift
//  Grocery List
//
//  Created by 진아현 on 6/21/25.
//

import Foundation
import SwiftData

@Model
class Item {
    var title: String
    var isCompleted: Bool
    
    init(title: String, isCompleted: Bool) {
        self.title = title
        self.isCompleted = isCompleted
    }
}
