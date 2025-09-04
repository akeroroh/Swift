//
//  ScrollToView.swift
//  3rd Practi e
//
//  Created by 진아현 on 7/16/25.
//

import SwiftUI

struct ScrollToView: View {
//    @State private var scrollToIndex: Int = 0
//
//   var body: some View {
//       VStack {
//           ScrollViewReader { proxy in
//               ScrollView {
//                   LazyVStack {
//                       ForEach(0..<50, id: \.self) { index in
//                           Text("Item \(index)")
//                               .frame(maxWidth: .infinity)
//                               .background(Color.blue.opacity(0.3))
//                               .id(index) // 각 항목에 ID 부여
//                               .padding()
//                       }
//                   }
//               }
//               .onChange(of: scrollToIndex) { oldIndex, newIndex in
//                   withAnimation {
//                       proxy.scrollTo(newIndex, anchor: .top) // 지정된 index로 스크롤 이동
//                   }
//               }
//           }
//
//           HStack {
//               Button("Top") { scrollToIndex = 0 }
//               Button("Middle") { scrollToIndex = 25 }
//               Button("Bottom") { scrollToIndex = 49 }
//           }
//       }
       
       @State private var scrollOffset: CGFloat = 0

       var body: some View {
           VStack {
               Text("Offset: \(Int(scrollOffset))")
                   .font(.headline)

               ScrollView {
                   LazyVStack {
                       ForEach(0..<50, id: \.self) { index in
                           Text("Item \(index)")
                               .frame(maxWidth: .infinity)
                               .background(Color.green.opacity(0.3))
                       }
                   }
                   .background(
                       GeometryReader { proxy in
                           Color.clear
                               .onAppear {
                                   scrollOffset = proxy.frame(in: .global).minY
                               }
                               .onChange(of: proxy.frame(in: .global).minY) { oldValue, newValue in
                                   scrollOffset = newValue
                               }
                       }
                   )
               }
           }
       }
//   }
}

#Preview {
    ScrollToView()
}
