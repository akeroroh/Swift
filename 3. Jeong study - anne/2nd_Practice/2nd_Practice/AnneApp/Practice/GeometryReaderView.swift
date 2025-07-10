//
//  GeometryReader.swift
//  AnneApp
//
//  Created by 진아현 on 7/8/25.
//

import SwiftUI

struct GeometryReaderView: View {
    
    var body: some View {
//        GeometryReader { geometry in
//            VStack {
//                Text("뷰의 X 좌표: \(geometry.frame(in: .global).origin.x)")
//                Text("뷰의 Y 좌표: \(geometry.frame(in: .global).origin.y)")
//            }
//            .frame(width: 200, height: 100)
//            .background(Color.orange.opacity(0.5))
//            .position(x: geometry.size.width / 2, y: geometry.size.height / 2)  // 중앙 배치
//            .onTapGesture {
//            }
//        }
//        .border(Color.red)
        GeometryReader { geometry in
            VStack {
                Text("반응형 버튼")
                    .frame(width: geometry.size.width * 0.6, height: geometry.size.height * 0.1)
                    .background(Color.blue)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
        }
    }
}

#Preview {
    GeometryReaderView()
}
