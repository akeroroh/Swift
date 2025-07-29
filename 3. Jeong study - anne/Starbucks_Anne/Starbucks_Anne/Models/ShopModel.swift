//
//  ShopModel.swift
//  Starbucks_Anne
//
//  Created by 진아현 on 7/29/25.
//

import Foundation

struct ShopModel: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let option: String?
}

final class ShopProducts {
    static let allLists: [ShopModel] = [
        .init(name: "텀블러", image: "tumbler", option: nil),
        .init(name: "커피 용품", image: "coffeething", option: nil),
        .init(name: "선물세트", image: "presentset", option: nil),
        .init(name: "보온병", image: "warmbottle", option: nil),
        .init(name: "머크/컵", image: "mug", option: nil),
        .init(name: "라이프스타일", image: "lifestyle", option: nil),
    ]
    
    static let newProducts: [ShopModel] = [
        .init(name: "그린 사이렌 도트 머그", image: "newProductGreenMug237", option: "237ml"),
        .init(name: "그린 사이렌 도트 머그", image: "newProductGreenMug355", option: "355ml"),
        .init(name: "홈 카페 미니 머그 세트", image: "newProductMiniMugSet", option: nil),
        .init(name: "홈 카페 글라스 세트", image: "newProductGrassSet", option: nil)
    ]
    
    static let bestProducts: [ShopModel] = [
        .init(name: "그린 사이렌 슬리브 머그", image: "GreenSirenMug", option: "355ml"),
        .init(name: "그린 사이렌 클래식 머그", image: "GreenSirenClassicMug", option: "355ml"),
        .init(name: "사이렌 머그 앤 우드 소서", image: "SirenMugAndWood", option: nil),
        .init(name: "리저브 골드 테일 머그", image: "ReserveGoldTailMug", option: "355ml"),
        .init(name: "블랙 앤 골드 머그 473ml", image: "blackAndGoldMug473", option: nil),
        .init(name: "블랙 링 머그 355ml", image: "blackAndGoldMug355", option: nil),
        .init(name: "북청사자놀음 데미머그", image: "LionDemiMug", option: "89ml"),
        .init(name: "서울 제주 데미머그 세트", image: "JejuDemiMug", option: nil)
    ]
}
