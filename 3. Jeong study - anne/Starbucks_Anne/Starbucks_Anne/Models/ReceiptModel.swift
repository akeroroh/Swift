//
//  ReceiptModel.swift
//  Starbucks_Anne
//
//  Created by 진아현 on 7/31/25.
//

import SwiftUI
import SwiftData

@Model
class ReceiptsModel {
    @Attribute(.unique) var id: UUID
    @Attribute(.externalStorage) var photo: Data?
    
    var store: String
    var totalAmount: Int
    var orderAt: String
    var createdAt: Date
    
    init(
        photo: Data,
        store: String,
        totalAmount: Int,
        orderAt: String,
        createdAt: Date = Date()
    ) {
        self.id = UUID()
        self.photo = photo
        self.store = store
        self.totalAmount = totalAmount
        self.orderAt = orderAt
        self.createdAt = createdAt
    }
}
