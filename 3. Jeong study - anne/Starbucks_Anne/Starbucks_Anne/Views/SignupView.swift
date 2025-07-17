//
//  SignupView.swift
//  Starbucks_Anne
//
//  Created by 진아현 on 7/10/25.
//

import SwiftUI

struct SignupView: View {
    //MARK: - PROPERTIES
    @StateObject var signup = SignupViewModel()
    @Bindable var router: NavigationRouter

    //MARK: - BODY
    var body: some View {
        VStack {
            NavigationTitle(title: "가입하기", router: router)
            
            VStack {
                SignUpSection
                
                Spacer()
                
                SignUpSubmitButton
            }
        }
        .navigationBarBackButtonHidden()
        .padding(.horizontal, 19)
        .padding(.bottom, 72)
    }
    
    //MARK: - VIEW
    private var SignUpSection: some View {
        VStack(alignment: .leading, spacing: 49) {
            VStack {
                TextField("닉네임", text: $signup.nickname)
                Divider()
            }
            
            VStack {
                TextField("이메일", text: $signup.email)
                Divider()
            }
            
            VStack {
                TextField("비밀번호", text: $signup.password)
                Divider()
            }
        }
    }
    
    private var SignUpSubmitButton: some View {
        Button{
            if signup.nickname.count >= 1 && signup.email.count >= 1 && signup.password.count >= 1 {
                signup.loginSave()
                router.pop()
            }
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundStyle(Color(.green01))
                    .frame(height: 58)
                
                Text("생성하기")
                    .font(.mainTextMedium18)
                    .foregroundStyle(Color(.white01))
            }
        }
    }
}

#Preview {
    SignupView(router: .init())
}
