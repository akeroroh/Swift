//
//  BindingUpView.swift
//  AnneApp
//
//  Created by 진아현 on 7/7/25.
//

import SwiftUI

struct BindingUpView: View {
    @State private var isClicked: Bool = false

    var body: some View {
        VStack {
            Text("현재 State 변수 값: \(isClicked)")
            
            StateBindingView(isClicked: $isClicked)
        }
    }
}

#Preview {
    BindingUpView()
}
