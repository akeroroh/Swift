//
//  HomeView.swift
//  Starbucks_Anne
//
//  Created by 진아현 on 7/10/25.
//

import SwiftUI

struct HomeView: View {
    //MARK: - PROPERTIES
    @AppStorage("nickname") private var nickname: String?
//    @Bindable var router: NavigationRouter
    @Bindable var router: NavigationRouter
    
    var recoMenu: RecoMenuViewModel = .init()
    var dessertMenu: DessertViewModel = .init()
    
    //MARK: - BODY
    var body: some View {
        ScrollView() {
            HomwTopSection
            
            VStack {
                IceChallengeSection
            }
            .padding(.horizontal, 10)
            
            RecoMenuSection
                .padding(.vertical, 20)
            
            VStack {
                BloomingIntroSection
            }
            .padding(.horizontal, 10)

            WhatNewSection
                .padding(.vertical, 20)
            
            VStack {
                homeMiddleImageSection
            }
            .padding(.horizontal, 10)
            
            DessertSection
                .padding(.vertical, 20)
            
            VStack {
                homeBottomImageSection
            }
            .padding(.horizontal, 10)
        }
        .navigationBarBackButtonHidden()
        .scrollIndicators(.hidden)
        .ignoresSafeArea()
        .navigationDestination(for: Route.self) { route in
            switch route {
            case .home:
                HomeView(router: router)
            case .signUp:
                SignupView(router: router)
            case .detail:
                CoffeeDetailView(router: router, item: .init(image: "QQ", name: "", backgroundImage: "", engName: "q", description: "", price: 0, hotIce: .iceBoth))
            }
        }
    }
    
    //MARK: - VIEW
    private var HomwTopSection: some View {
        ZStack {
            Image(.homeTop)
            
            VStack(spacing: 0) {
                HStack {
                    Text("골든 미모사 그린 티와 함께\n행복한 새해의 축배를 들어요!")
                        .font(.mainTextBold24)
                        .foregroundStyle(Color.black03)
                    Spacer()
                }
                .padding(.bottom, 9)
                
                HStack {
                    Spacer()
                    Button {
                        print("\(String(describing: nickname))")
                        print("내용 보기")
                    } label: {
                        HStack(spacing: 2) {
                            Text("내용 보기")
                                .font(.mainTextMedium13)
                                .foregroundStyle(Color.gray06)
                            Image(.homeTopGoIcon)
                        }
                    }
                }
                
                HStack {
                    VStack(alignment: .leading, spacing: 5) {
                        Text("11★ until next Reward")
                            .font(.mainTextSemiBold16)
                            .foregroundStyle(Color.brown02)
                        
                        ZStack(alignment: .leading) {
                            RoundedRectangle(cornerRadius: 4)
                                .frame(width: 256, height: 8)
                                .foregroundStyle(Color.gray01)
                            
                            RoundedRectangle(cornerRadius: 4)
                                .frame(width: 111, height: 8)
                                .foregroundStyle(Color.brown01)
                        }
                    }
                    
                    Spacer()
                    
                    HStack(spacing: 5) {
                        Text("1")
                            .font(.mainTextSemiBold38)
                            .foregroundStyle(Color.black03)
                        
                        Text("/")
                            .font(.mainTextLight14)
                            .foregroundStyle(Color.gray)
                        
                        Text("12★")
                            .font(.mainTextSemiBold24)
                            .foregroundStyle(Color.brown02)
                    }
                    .padding(.trailing, 13)
                }
            }
            .padding(.top, 106)
            .padding(.horizontal, 28)
        }
    }
    
    private var IceChallengeSection: some View {
        Image(.iceChallenge)
    }
    
    private var RecoMenuSection: some View {
        VStack(alignment: .leading, spacing: 25) {
            Text(nickname ?? "(설정 닉네임)")
                .font(.mainTextBold24)
                .foregroundStyle(Color.brown01)
            + Text("님을 위한 추천 메뉴")
                .font(.mainTextBold24)
                .foregroundStyle(Color.black03)
            
            ScrollView(.horizontal) {
                HStack(spacing: 16) {
                    ForEach(recoMenu.recoMenus, id: \.id) { menu in
                        Button {
                            print(menu.name)
                            router.push(.detail(item: menu))
                        } label: {
                            CircleImageCard(name: menu.name, image: menu.image)
                        }
                    }
                }
            }
            .scrollIndicators(.hidden)
        }
        .safeAreaPadding(.horizontal, 20)
    }
    
    private var BloomingIntroSection: some View {
        VStack(spacing: 20) {
            Image(.blooming)
            Image(.introducing)
        }
    }
    
    private var WhatNewSection: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("What's New")
                .font(.mainTextBold24)
            
            SquareImageCard()
        }
        .safeAreaPadding(.horizontal, 10)
    }
    
    private var homeMiddleImageSection: some View {
        VStack(spacing: 14) {
            Image(.homeMiddle1)
            Image(.homeMiddle2)
            Image(.homeMiddle3)
        }
    }
    
    private var DessertSection: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("하루가 달콤해지는 디저트")
                .font(.mainTextSemiBold24)
                .foregroundStyle(Color.black03)
            
            ScrollView(.horizontal) {
                HStack(spacing: 16) {
                    ForEach(dessertMenu.recoDessertMenus, id: \.id) { menu in
                        CircleImageCard(name: menu.name, image: menu.image)
                    }
                }
            }
            .scrollIndicators(.hidden)
            
//            CircleImageCard(isRecoType: dessertMenu, router: router)
        }
        .safeAreaPadding(.horizontal, 10)
    }
    
    private var homeBottomImageSection: some View {
        VStack(spacing: 20) {
            Image(.homeBottom1)
            Image(.homeBottom2)
            Image(.homeBottom3)
        }
    }
}

#Preview {
    HomeView(router: .init())
}
