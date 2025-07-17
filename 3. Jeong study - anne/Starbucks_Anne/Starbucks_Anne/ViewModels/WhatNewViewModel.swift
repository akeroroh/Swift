//
//  WhatNewViewModel.swift
//  Starbucks_Anne
//
//  Created by 진아현 on 7/17/25.
//

import Foundation

@Observable
class WhatNewViewModel {
    let whatNews: [whatNew] = [
        .init(image: "whatNew1", title: "25년 3월 일회용컵 없는 날 캠페인을 시작합니다!!", description: "매월 10일은 일회용컵 없는 날! 스타벅스 에모매 장 에서 개인컵 및 다회용 컵을 이용하세요."),
        .init(image: "whatNew2", title: "스타벅스 ooo점을 찾습니다", description: "스타벅스 커뮤니티 스토어 파트너를 운영할 기관 을 공모합니다."),
        .init(image: "whatNew3", title: "2월 8일, 리저브 스프링 신규 커피를 출시합니다!!", description: "산뜻하고 달콤한 풍미가 가득한 리저브를 맛보세 요.")
    ]
}
