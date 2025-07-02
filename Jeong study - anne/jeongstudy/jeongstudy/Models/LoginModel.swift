//
//  LoginModel.swift
//  jeongstudy
//
//  Created by 진아현 on 7/2/25.
//

import Foundation

struct User: Codable, Identifiable {
    let id: String
    let pwd: String
}
