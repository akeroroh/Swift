//
//  Note.swift
//  Note Watch App
//
//  Created by 진아현 on 7/1/25.
//

import Foundation

struct Note: Identifiable, Codable {
    let id: UUID
    let text: String
}
