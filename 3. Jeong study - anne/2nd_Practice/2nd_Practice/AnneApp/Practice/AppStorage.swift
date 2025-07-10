//
//  AppStorage.swift
//  AnneApp
//
//  Created by 진아현 on 7/8/25.
//

import SwiftUI

struct AppStorageView: View {
//    @AppStorage("username") var username: String = "Anne"
    @AppStorage("userAge") private var userAge: Int = 20
    @AppStorage("isDarkMode") private var isDarkMode: Bool = false
    
    var body: some View {
//        VStack {
//            Text("Hello, \(username)!")
//            Button("이름 변경") {
//                username = "UMC"
//            }
//        }
        VStack {
            Text("Age: \(userAge)")
            
            Button(action: {
                userAge += 1
            }, label: {
                Text("나이 증가")
            })
            
            Toggle("Dark Mode", isOn: $isDarkMode)
                .frame(width: 150)
        }
    }
}

#Preview {
    AppStorageView()
}
