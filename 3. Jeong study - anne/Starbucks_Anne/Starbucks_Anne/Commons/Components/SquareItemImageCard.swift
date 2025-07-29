//
//  SquareImageCard.swift
//  Starbucks_Anne
//
//  Created by 진아현 on 7/29/25.
//

import SwiftUI

struct SquareItemImageCard: View {
    //MARK: - PROPERTIES
    var name: String
    var image: String
    var option: String?
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Image(image)
            Text("\(name)\n\(option ?? "")")
                .font(.mainTextSemiBold14)
//            Text(option ?? "")
//                .font(.mainTextSemiBold14)
        }
    }
}

#Preview {
    SquareItemImageCard(name: "그린 사이렌 도트 머그", image: "newProductGreenMug237", option: nil)
}
