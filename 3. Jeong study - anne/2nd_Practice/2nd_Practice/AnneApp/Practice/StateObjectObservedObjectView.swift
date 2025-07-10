//
//  StateObjectObservedObjectView.swift
//  AnneApp
//
//  Created by 진아현 on 7/7/25.
//

import SwiftUI

struct StateObjectObservedObjectView: View {
//    @ObservedObject var viewModel: StateObjectViewModel = .init()
//    @StateObject var viewModel: StateObjectViewModel
//    @StateObject var viewModel: StateObjectViewModel = .init()
//    @State private var showBottomView = false
    
//    var viewModel: StateObjectViewModel = .init()
    private var counter = StateObjectViewModel()
    
    var body: some View {
//        VStack {
//            Text("\(viewModel.count)")
//            
//            Button(action: {
//                viewModel.count += 1
//            }, label: {
//                Text("카운트 증가 버튼")
//            })
//        }
        
//        NavigationStack {
//            VStack {
//                Text("상위뷰입니다.")
//                Text("텍스트 입력 값 : \(viewModel.inputText)")
//                TextField("아무런 값을 넣어보세요!", text: $viewModel.inputText)
//                    .frame(width: 350)
//                
//                Button("하위뷰 부르기") {
//                    showBottomView.toggle()
//                }
//                .sheet(isPresented: $showBottomView) {
//                    StateObjectBottomView(viewModel: viewModel)
//                }
//            }
//        }
        
//        VStack {
//            Text("\(viewModel.count)")
//            
//            Button(action: {
//                viewModel.count += 1
//            }, label: {
//                Text("카운트 증가합니다.")
//            })
//        }
//        .padding()
        
        VStack {
            Text("Count: \(counter.count)")
            Button("Increment") {
                counter.count += 1
            }
            StateObjectBottomView(counter: counter)
        }
    }
}

#Preview {
    StateObjectObservedObjectView()
}
