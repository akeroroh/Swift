//
//  LazyStack.swift
//  3rd Practi e
//
//  Created by 진아현 on 7/16/25.
//

import SwiftUI

struct LazyStack: View {
//    let columns = Array(repeating: GridItem(.flexible()), count: 3)
//           
//    var body: some View {
//       ScrollView {
//           LazyVGrid(columns: columns, spacing: 10) {
//               ForEach(1...20, id: \.self) { index in
//                   Text("Item \(index)")
//                       .frame(height: 80)
//                       .frame(maxWidth: .infinity)
//                       .background(Color.blue.opacity(0.7))
//               }
//           }
//       }
//    }
    
    let rows = Array(repeating: GridItem(.fixed(80)), count: 2)

    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows, spacing: 10) {
                ForEach(1...15, id: \.self) { index in
                    Text("Item \(index)")
                        .frame(width: 80)
                        .frame(maxHeight: .infinity)
                        .background(Color.green.opacity(0.7))
                }
            }
        }
    }
}

#Preview {
    LazyStack()
}
