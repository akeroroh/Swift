//
//  NavigationTitle.swift
//  Starbucks_Anne
//
//  Created by 진아현 on 7/17/25.
//

import SwiftUI

struct NavigationTitle: View {
    //MARK: - PROPERTIES
    let title: String
    @Bindable var router: NavigationRouter
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            Text(title)
                .font(.mainTextMedium16)
            
            HStack {
                Button {
                    router.pop()
                } label: {
                    Image(systemName: "chevron.backward")
                        .foregroundStyle(Color.black03)
                }
                Spacer()
            }
        }
        .padding(.bottom, 130)
    }
}
