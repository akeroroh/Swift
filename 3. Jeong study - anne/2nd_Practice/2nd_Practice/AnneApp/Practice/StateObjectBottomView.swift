//
//  StateObjectBottomView.swift
//  AnneApp
//
//  Created by 진아현 on 7/8/25.
//

import SwiftUI

struct StateObjectBottomView: View {
//    @ObservedObject var viewModel: StateObjectViewModel
//    
//    init(viewModel: StateObjectViewModel) {
//        self.viewModel = viewModel
//    }
    
    @Bindable var counter: StateObjectViewModel
    
    var body: some View {
//        VStack {
//            Text("하위 뷰 입니다.")
//            Text("현재 입력된 값 : \(viewModel.inputText)")
//            Button("강제 초기화") {
//                viewModel.inputText = "초기화됨"
//            }
//            Spacer()
//        }
        
        Button("Child Increment") {
            counter.count += 1
        }
    }
}

//#Preview {
//    StateObjectBottomView()
//}
