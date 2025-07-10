//
//  StateBindingView.swift
//  AnneApp
//
//  Created by 진아현 on 7/7/25.
//

import SwiftUI

struct StateBindingView: View {
    //MARK: - STATE
//    @State private var count = 0  // 상태 프로퍼티 선언
//
//    var body: some View {
//        VStack {
//            Text("카운트: \(count)") // 값이 변경되면 자동 업데이트
//                .font(.largeTitle)
//
//            Button("증가") {
//                count += 1  // 상태 변경 시 UI 자동 업데이트
//            }
//            .padding()
//        }
//    }
    
    //MARK: - TEXT FIELD
//    @State private var text: String = ""
//
//    var body: some View {
//        VStack {
//            Text("텍스트 내용: \(text)")
//                .font(.largeTitle)
//
//            TextField("아무 값을 입력해보세요!", text: $text)
//                .frame(width: 350)
//        }
//    }
    
    //MARK: - BINDING
    @Binding var isClicked: Bool
    
    init(isClicked: Binding<Bool>) {
        self._isClicked = isClicked
    }
    
    var body: some View {
        Button(action: {
            isClicked.toggle()
            print("하위 뷰에서 클릭해서 값 변경함 : \(isClicked)")
        }, label: {
            Text("상위 뷰의 값을 State 값 변경")
        })
    }
}

//#Preview {
//    StateBindingView(isClicked: isClicked)
//}
