//
//  SimpleListView.swift
//  3rd Practi e
//
//  Created by 진아현 on 7/15/25.
//

import SwiftUI

struct SimpleListView: View {
    var body: some View {
        List {
            Text("🍎 Apple")
            Text("🍌 Banana")
            Text("🍒 Cherry")
        }
    }
}

#Preview {
    SimpleListView()
}
