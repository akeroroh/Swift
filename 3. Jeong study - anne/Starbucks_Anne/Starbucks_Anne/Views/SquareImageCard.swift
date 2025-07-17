//
//  SquareImageCard.swift
//  Starbucks_Anne
//
//  Created by 진아현 on 7/17/25.
//

import SwiftUI

struct SquareImageCard: View {
    //MARK: - PROPERTIES
    private var whatNews: WhatNewViewModel = .init()
    
    //MARK: - BODY
    var body: some View {
        ScrollView(.horizontal) {
            WhatNewScrollHStackItem
        }
        .scrollIndicators(.hidden)
    }
    
    //MARK: - VIEW
    private var WhatNewScrollHStackItem: some View {
        HStack(spacing: 14) {
            ForEach(whatNews.whatNews, id: \.id) { news in
                VStack(alignment: .leading, spacing: 9) {
                    Image(news.image)
                        .padding(.bottom, 7)
                    
                    Text(news.title)
                        .font(.mainTextSemiBold18)
                        .foregroundStyle(Color.black02)
                        .lineLimit(1)
                    
                    Text(news.description)
                        .font(.mainTextSemiBold13)
                        .foregroundStyle(Color.gray03)
                        
                }
//                .border(Color.red)
                .frame(width: 242)
            }
        }
    }

}

#Preview {
    SquareImageCard()
}
