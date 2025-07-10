//
//  OtherItemBox.swift
//  Starbucks_Anne
//
//  Created by 진아현 on 7/11/25.
//

import SwiftUI

struct OtherItemBox: View {
    //MARK: - PROPERTIES
    let title: String
    let image: String
    
    //MARK: - BODY
    var body: some View {
        Button {
            print(title)
        } label: {
            HStack(spacing: 4) {
                Image(image)
                
                Text(title)
                    .font(.mainTextSemiBold16)
                    .foregroundStyle(Color.black02)
            }
            .frame(width: 157, alignment: .leading)
        }
    }
}
