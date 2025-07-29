//
//  LoadingOverlay.swift
//  Starbucks_Anne
//
//  Created by 진아현 on 7/18/25.
//

import SwiftUI

struct LoadingOverlay: ViewModifier {
    func body(content: Content) -> some View {
        content
            .overlay(content: {
                ZStack(content: {
                    Color.black.opacity(0.6).ignoresSafeArea()
                    
                    Text("로딩중입니다 잠시만 기다려주세요!")
                        .foregroundStyle(Color.white)
                })
            })
    }
}

extension View {
    func loadingOverlay() -> some View {
        self.modifier(LoadingOverlay())
    }
}
