//
//  SettingsView.swift
//  AnneApp
//
//  Created by 진아현 on 7/8/25.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var enviromentViewModel: EnviromentViewModel
    
    var body: some View {
        VStack {
            Text("설정 화면")
                .font(.largeTitle)

            TextField("사용자 이름 변경", text: $enviromentViewModel.username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
    }
}

#Preview {
    SettingsView()
        .environmentObject(EnviromentViewModel())
}
