//
//  FactModel.swift
//  Avocados
//
//  Created by 진아현 on 7/4/25.
//

import SwiftUI

//MARK: - FACT MODEL
struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
