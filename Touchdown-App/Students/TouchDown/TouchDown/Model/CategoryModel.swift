//
//  CategoryModel.swift
//  TouchDown
//
//  Created by 진아현 on 6/29/25.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
