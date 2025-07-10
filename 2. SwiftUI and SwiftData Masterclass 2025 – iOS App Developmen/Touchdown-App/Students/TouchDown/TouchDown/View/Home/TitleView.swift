//
//  TitleView.swift
//  TouchDown
//
//  Created by 진아현 on 6/29/25.
//

import SwiftUI

struct TitleView: View {
    //MARK: - PROPERTIES
    var title: String
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

#Preview {
    TitleView(title: "Helmet")
}
