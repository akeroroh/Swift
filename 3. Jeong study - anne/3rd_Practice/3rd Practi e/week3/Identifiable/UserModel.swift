//
//  UserModel.swift
//  3rd Practi e
//
//  Created by 진아현 on 7/15/25.
//

import SwiftUI

struct User: Identifiable {
    let id = UUID()
    var name: String
    var age: Int
}
