//
//  ContentView.swift
//  AnneApp
//
//  Created by 진아현 on 6/27/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //MARK: - 1. 변수로
//        VStack(spacing: 10) {
//            headerView
//            messageView
//            actionButton
//        }
        
        //MARK: - 2. 따로 빼서
        VStack {
            HeaderView(text: "헤더입니다.")
            MessageView(message: "메시지입니다")
        }
    }
    
//    private var headerView: some View {
//        Text("hello swiftUI")
//            .font(.title)
//            .foregroundStyle(Color.red)
//    }
//
//    private var messageView: some View {
//        Text("이제 하위 뷰를 만들어보자")
//            .font(.title)
//            .foregroundStyle(Color.gray)
//    }
//
//    private var actionButton: some View {
//        Button(action: {
//            print("버튼 눌렸네요 ㅎㅎ")
//        }, label: {
//            Text("클릭해보세요!")
//        })
//    }
}

//#Preview {
//    ContentView()
//}

struct ContentView_Preview: PreviewProvider {
    static var devices = ["iPhone 11", "iPhone 16 Pro"]
    
    static var previews: some View {
        ForEach(devices, id: \.self) { device in
            ContentView()
                .previewDevice(PreviewDevice(rawValue: device))
                .previewDisplayName(device)
        }
    }
}
