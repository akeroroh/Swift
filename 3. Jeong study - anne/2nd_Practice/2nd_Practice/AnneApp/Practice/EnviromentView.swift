//
//  EnviromentView.swift
//  AnneApp
//
//  Created by 진아현 on 7/8/25.
//

import SwiftUI

struct EnviromentView: View {
//    @Environment(\.colorScheme) var colorScheme
    @StateObject var enviromentViewModel: EnviromentViewModel = .init()
    
    var body: some View {
//        VStack {
//           Text("현재 색상 모드: \(colorScheme == .dark ? "다크 모드" : "라이트 모드")")
//               .padding()
//               .background(colorScheme == .dark ? Color.black : Color.white)
//               .foregroundStyle(colorScheme == .dark ? Color.white : Color.black)
//       }
//       .padding()
        
        NavigationStack {
            VStack {
                Text("현재 사용자: \(enviromentViewModel.username)")
                    .font(.title)

                NavigationLink(
                    "프로필 화면으로 이동",
                    destination: ProfileView().environmentObject(enviromentViewModel)
                )
                
                NavigationLink("설정 화면으로 이동",
                               destination: SettingsView().environmentObject(enviromentViewModel)
                )
            }
            
        }
    }
}

#Preview {
    EnviromentView()
}
