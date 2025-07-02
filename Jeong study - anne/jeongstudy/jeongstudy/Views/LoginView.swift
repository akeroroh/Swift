//
//  LoginView.swift
//  jeongstudy
//
//  Created by 진아현 on 7/2/25.
//

import SwiftUI

struct LoginView: View {
    //MARK: - PROPERTIES
    
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .center) {
            TopTitle
            Spacer()
            IDPasswordSection
            Spacer()
            LoginSection
        }
        .padding(.top, 104)
        .padding(.horizontal)
    }
    
    private var TopTitle: some View {
        VStack(alignment: .leading) {
            Image("starbucks-logo")
                .resizable()
                .frame(width: 97, height: 95)
                .padding(.bottom, 28)
            
            Text("안녕하세요.\n스타벅스입니다.")
                .font(.mainTextExtraBold)
                .padding(.bottom, 19)
            
            Text("회원 서비스 이용을 위해 로그인 해주세요")
                .font(.mainTextMedium16)
                .foregroundStyle(Color("gray01"))
        }
        .frame(maxWidth: .infinity)
        .padding(0)
    }
    
    private var IDPasswordSection: some View {
        VStack(alignment: .leading) {
            Group {
                Text("아이디")
                Divider()
                    .padding(.bottom, 47)
                
                Text("비밀번호")
                Divider()
                    .padding(.bottom, 47)
            }
            .font(.mainTextRegular13)
            .foregroundStyle(Color("black01"))
            
            Button{
                print("press the login button")
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(Color("green01"))
                        .frame(width: 402, height: 46)
                    
                    Text("로그인하기")
                        .font(.mainTextMedium16)
                        .foregroundStyle(Color.white)
                }
            }
        }
    }
    
    private var LoginSection: some View {
        VStack(alignment: .center, spacing: 19) {
            Text("이메일로 회원가입하기")
                .font(.mainTextRegular12)
                .foregroundStyle(Color("gray04"))
            
            Image("kakao-login")
                .frame(width: 306, height: 45)
            
            Image("apple-login")
                .frame(width: 306, height: 45)
        }
    }
    
}

struct SwiftUIView_Preview: PreviewProvider {
    static var devices = ["iPhone 11", "iPhone 16 Pro"]
    
    static var previews: some View {
        ForEach(devices, id: \.self) { device in
            LoginView()
                .previewDevice(PreviewDevice(rawValue: device))
                .previewDisplayName(device)
        }
    }
}
