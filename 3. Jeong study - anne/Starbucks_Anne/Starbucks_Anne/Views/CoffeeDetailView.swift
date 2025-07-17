//
//  CoffeDetailView.swift
//  Starbucks_Anne
//
//  Created by 진아현 on 7/17/25.
//

import SwiftUI

struct CoffeeDetailView: View {
    //MARK: - PROPERTIES
    @Bindable var router: NavigationRouter
    var item: CoffeeDetailModel
    
    @State private var isAnimating: Bool = false
    
    //MARK: - BODY
    var body: some View {
        ZStack(alignment: .top) {
            VStack {
                
                
                CoffeeDetailContentSection
                
                Spacer()
                
                BottomOrderButton
            }
            .ignoresSafeArea()
            .navigationBarBackButtonHidden()
            
            CoffeeDetailNavationBar
        }
    }
    
    //MARK: - VIEW
    private var CoffeeDetailNavationBar: some View {
        HStack {
            Button {
                router.pop()
            } label: {
                Image(systemName: "chevron.backward")
                    .foregroundStyle(Color.white01)
            }
            Spacer()
            Button {
                print("공유")
            } label: {
                Image(systemName: "square.and.arrow.up")
                    .foregroundStyle(Color.white01)
            }
        }
        .padding(.horizontal, 20)
    }
    
    private var CoffeeDetailContentSection: some View {
        VStack(spacing: 20) {
            Image(item.backgroundImage)
                .resizable()
                .scaledToFit()
            CoffeeDetailInfoSection
        }
    }
    
    private var CoffeeDetailInfoSection: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading, spacing: 4) {
                HStack(spacing: 4) {
                    Text(item.name)
                        .font(.mainTextSemiBold24)
                        .foregroundStyle(Color.black03)
                    
                    Image(.new)
                }
                
                Text(item.engName)
                    .font(.mainTextSemiBold14)
                    .foregroundStyle(Color.gray01)
            }
            
            Spacer()
            
            VStack(alignment: .leading, spacing: 20) {
                Text(item.description)
                    .font(.mainTextSemiBold14)
                    .foregroundStyle(Color.gray06)
                
                Text("\(item.price)원")
                    .font(.mainTextBold24)
                    .foregroundStyle(Color.black03)
            }
            
            Spacer()
            
            VStack {
                if item.hotIce == .iceOnly || item.hotIce == .hotOnly {
                    IceHotInfo
                } else if item.hotIce == .iceBoth {
                    IceHotButton
                } else {
                    IceHotButton
                }
            }
            .frame(height: 44)
        }
        .frame(height: 256)
        .padding(.horizontal, 10)
    }
    
    private var IceHotInfo: some View {
        HStack(alignment: .center, spacing: 0) {
            Spacer()
            Text(item.hotIce == .iceOnly ? "ICE ONLY" : "HOT ONLY")
                .foregroundStyle(item.hotIce == .iceOnly ? Color.blue01 : Color.red01)
                .font(.mainTextBold16)
            Spacer()
        }
        .frame(height: 36)
        .overlay(
            RoundedRectangle(cornerRadius: 999)
                .stroke(Color.gray00, lineWidth: 1)
        )
    }
    
    private var IceHotButton: some View {
        GeometryReader { geometry in
            ZStack {
                Capsule()
                    .foregroundStyle(Color.gray07)
                    .frame(height: 36)
                
                HStack {
                    HStack {
                        Spacer()
                        Text("HOT")
                            .font(.mainTextSemiBold18)
                            .foregroundStyle(Color.gray02)
                        Spacer()
                    }
                    Spacer()
                    HStack {
                        Spacer()
                        Text("ICED")
                            .font(.mainTextSemiBold18)
                            .foregroundStyle(Color.gray02)
                        Spacer()
                    }
                }
                
                ZStack {
                    Capsule()
                        .foregroundStyle(Color.gray08)
                        .frame(width: geometry.size.width * 0.5, height: 36)
                        .shadow(color: .black.opacity(0.25), radius: 5, x: 0, y: 1)
                    Text(isAnimating ? "HOT" : "ICED")
                        .font(.mainTextSemiBold18)
                        .foregroundStyle(isAnimating ? Color.red01 : Color.blue01)
                }
                .offset(x: isAnimating ? -geometry.size.width/4 : geometry.size.width/4)
                .animation(.easeOut(duration: 0.5), value: isAnimating)
            }
            .onTapGesture {
                self.isAnimating.toggle()
            }
        }
    }

    private var BottomOrderButton: some View {
        Button{
            print("주문하기")
        } label: {
            Text("주문하기")
                .font(.mainTextMedium16)
                .foregroundStyle(Color.white01)                    .padding()
                .background(
                    Color.green00
                        .frame(width: 383, height: 43)
                        .clipShape(Capsule())
                        .padding(.horizontal, 28)
                        .padding(.vertical, 15)
                )
                .padding(.bottom, 14)
        }
    }
}

#Preview {
    CoffeeDetailView(router: .init(), item: .init(image: "iceCaramelMacchiato", name: "아이스 카라멜 마끼아또", backgroundImage: "iceCaramelMacchiatoDetail", engName: "Iced Caramel Macchiato", description: "향긋한 바닐라 시럽과 시원한 우유에 얼음을 넣고 점을 찍듯이 에스프레소를 부은 후 벌집 모양으로 카라멜 드리즐을 올린 달콤한 커피 음료", price: 6100, hotIce: .iceBoth))
}
