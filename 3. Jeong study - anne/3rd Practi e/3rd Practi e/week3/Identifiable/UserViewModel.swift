//
//  UserViewModel.swift
//  3rd Practi e
//
//  Created by 진아현 on 7/15/25.
//

import Foundation
import Observation

@Observable
class UserViewModel {
    var users = [
        User(name: "Alice", age: 24),
        User(name: "Bob", age: 30),
        User(name: "Charlie", age: 28)
    ]
}
