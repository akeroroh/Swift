//
//  HeaderModel.swift
//  Avocados
//
//  Created by 진아현 on 7/4/25.
//

import SwiftUI

//MARK: - HEADER MODEL
struct Header: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}

