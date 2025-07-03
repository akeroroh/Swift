//
//  SplashView.swift
//  jeongstudy
//
//  Created by 진아현 on 7/2/25.
//

import SwiftUI

struct SplashView: View {
    //MARK: - PROPERTIES
    
    
    //MARK: - BODY
    var body: some View {
        ZStack(alignment: .center) {
            Color(.green00)
            
            Image("starbucks-logo")
                .resizable()
                .scaledToFit()
                .frame(width: 168, height: 168)
                .border(Color.red)
        }
        .ignoresSafeArea(.all)
//        .background(Color("green00"))
    }
}

#Preview {
    SplashView()
}
