//
//  ProfileView.swift
//  AnneApp
//
//  Created by 진아현 on 7/8/25.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var environmentViewModel: EnviromentViewModel
    
    var body: some View {
        VStack {
                    Text("프로필 화면")
                        .font(.largeTitle)

                    Text("사용자 이름: \(environmentViewModel.username)")  // 부모 뷰의 상태가 자동 반영됨
                        .font(.title)

                    Button("이름 변경") {
                        environmentViewModel.username = "새로운 사용자"  // 값이 변경되면 모든 뷰에 즉시 반영
                    }
                    .padding()
                    .background(Color.blue)
                    .foregroundStyle(.white)
                }
    }
}

#Preview {
    ProfileView()
        .environmentObject(EnviromentViewModel())
}
