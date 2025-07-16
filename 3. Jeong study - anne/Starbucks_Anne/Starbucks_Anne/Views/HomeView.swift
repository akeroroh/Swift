//
//  HomeView.swift
//  Starbucks_Anne
//
//  Created by 진아현 on 7/10/25.
//

import SwiftUI

struct HomeView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        HomwTopSection
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
                        
                        Rectangle()
                            .frame(width: 150, height: 5)
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
}

#Preview {
    HomeView()
}
