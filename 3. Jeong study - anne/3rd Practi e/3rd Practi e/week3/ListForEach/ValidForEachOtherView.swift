//
//  ValidForEachOtherView.swift
//  3rd Practi e
//
//  Created by 진아현 on 7/15/25.
//

import SwiftUI

struct ValidForEachOtherView: View {
    let fruits = [
        Fruit(name: "Apple", emoji: "🍎"),
        Fruit(name: "Apple", emoji: "🍎"), // 같은 이름을 가진 데이터가 있음
        Fruit(name: "Banana", emoji: "🍌")
    ]
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ValidForEachOtherView()
}
