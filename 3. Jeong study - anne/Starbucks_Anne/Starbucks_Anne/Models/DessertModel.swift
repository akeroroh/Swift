//
//  DessertModel.swift
//  Starbucks_Anne
//
//  Created by 진아현 on 7/17/25.
//

import Foundation

struct DessertMenu: Identifiable {
    let id = UUID()
    let name: String
    let image: String
}

final class RecoDessertMenus {
    static let lists: [DessertMenu] = [
        .init(name: "너티 크루아상", image: "dessertImage1"),
        .init(name: "매콤 소시지 불고기", image: "dessertImage2"),
        .init(name: "미니 리프 파이", image: "dessertImage3"),
        .init(name: "뺑 오 쇼콜라", image: "dessertImage4"),
        .init(name: "소시지&올리브 파이", image: "dessertImage5")
    ]
}
