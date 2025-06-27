//
//  VideoModel.swift
//  Africa
//
//  Created by 진아현 on 6/26/25.
//

import SwiftUI

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    //MARK: - COMPUTED PROPERTY
    var thumbnail: String {
        "video-\(id)"
    }
}
