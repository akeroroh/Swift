//
//  LoginModel.swift
//  Starbucks_Anne
//
//  Created by 진아현 on 7/10/25.
//

import Foundation

struct User: Codable, Identifiable {
    let id: String
    let pwd: String
}
