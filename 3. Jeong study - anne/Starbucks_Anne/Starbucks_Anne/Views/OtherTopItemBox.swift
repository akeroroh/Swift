//
//  OtherTopItemBox.swift
//  Starbucks_Anne
//
//  Created by 진아현 on 7/11/25.
//
import SwiftUI

struct OtherTopItemBox: View {
    //MARK: - PROPERTIES
    let title: String
    let image: String
    
    //MARK: - BODY
    var body: some View {
        Button(action: {
            print(title)
        }, label: {
            ZStack() {
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 102, height: 108)
                    .foregroundStyle(Color.white)
                    .shadow(color: .black.opacity(0.1), radius: 2.5, x: 0, y: 0)
                
                VStack(spacing: 4) {
                    Image(image)
                    
                    Text(title)
                        .font(.mainTextSemiBold16)
                        .foregroundStyle(Color.black02)
                }
            }
        })
    }
}
