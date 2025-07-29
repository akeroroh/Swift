//
//  LoginView.swift
//  Starbucks_Anne
//
//  Created by 진아현 on 7/10/25.
//

import SwiftUI

struct LoginView: View {
    //MARK: - PROPERTIES
    @StateObject var login = LoginViewModel()
    @Bindable var router: NavigationRouter
    
    enum Field: Hashable {
        case id
        case pwd
    }
    
    @FocusState private var focusField: Field?
    @AppStorage("email") private var email: String?
    @AppStorage("password") private var password: String?
    
    //MARK: - BODY
    var body: some View {
//        NavigationStack(path: $router.path) {
            VStack(alignment: .leading) {
                Spacer()
                TopTitle
                Spacer()
                IDPasswordSection
                Spacer()
                LoginSection
            }
            .padding(.horizontal, 19)
//            .navigationDestination(for: Route.self) { route in
//                switch route {
//                case .home:
//                    TabBarView(router: router, shopViewModel: <#ShopViewModel#>)
//                case .signUp:
//                    SignupView(router: router)
//                case .detail(let item):
//                    CoffeeDetailView(router: router, item: item)
//                }
//            }
//        }
    }
    
    //MARK: - VIEW
    private var TopTitle: some View {
        VStack(alignment: .leading) {
            Image(.starbucksLogo)
                .resizable()
                .frame(width: 97, height: 95)
                .padding(.bottom, 28)
            
            Text("안녕하세요.\n스타벅스입니다.")
                .font(.mainTextExtraBold)
                .padding(.bottom, 19)
            
            Text("회원 서비스 이용을 위해 로그인 해주세요")
                .font(.mainTextMedium16)
                .foregroundStyle(Color(.gray01))
        }
    }
    
    private var IDPasswordSection: some View {
        VStack(alignment: .leading, spacing: 47) {
            VStack(alignment: .leading) {
                TextField("아이디", text: $login.id)
                    .focused($focusField, equals: .id)
                
                Divider()
                    .overlay(focusField == .id ? Color.green01 : Color.gray01)
            }
            .font(.mainTextRegular13)
            .foregroundStyle(Color(.black01))
            
            VStack(alignment: .leading) {
                TextField("비밀번호", text: $login.pwd)
                    .focused($focusField, equals: .pwd)
                
                Divider()
                    .overlay(focusField == .pwd ? Color.green01 : Color.gray01)
            }
            .font(.mainTextRegular13)
            .foregroundStyle(Color(.black01))
            
            Button {
                if checkUser(id: login.id, pwd: login.pwd) {
                    router.push(.home)                    
                }
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(Color(.green01))
                        .frame(height: 46)
                    
                    Text("로그인하기")
                        .font(.mainTextMedium16)
                        .foregroundStyle(Color(.white01))
                }
            }
        }
    }
    
    private var LoginSection: some View {
        HStack {
            Spacer()
            VStack(alignment: .center, spacing: 19) {
                Button {
                    router.push(.signUp)
                } label : {
                    Text("이메일로 회원가입하기")
                        .font(.mainTextRegular12)
                        .foregroundStyle(Color(.gray04))
                }
                
                Image(.kakaoLogin)
                    .frame(width: 306, height: 45)
                
                Image(.appleLogin)
                    .frame(width: 306, height: 45)
            }
            Spacer()
        }
    }
    
    //MARK: - FUNCTION
    func checkUser(id: String, pwd: String) -> Bool {
        if email == id && password == pwd {
            return true
        }
        return false
    }
    
}

#Preview {
    LoginView(router: .init())
}
