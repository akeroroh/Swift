//
//  OtherView.swift
//  Starbucks_Anne
//
//  Created by 진아현 on 7/11/25.
//

import SwiftUI

struct OtherView: View {
    //MARK: - PROPERTIES
    @StateObject var signupViewModel = SignupViewModel()

    //MARK: - BODY
    var body: some View {
        VStack {
            TopTitleSection
            VStack {
                TopCustomerInfo
                Spacer()
                PaySection
                Spacer()
                CustomerSection
            }
            .padding(.horizontal, 10)
            .padding(.vertical, 41)
            .background(Color.white01)
        }
    }
    
    //MARK: - VIEW
    private var TopTitleSection: some View {
        HStack {
            Text("Other")
                .font(.mainTextBold24)
            
            Spacer()
            
            Button {
                print("로그아웃")
            } label: {
                Image(.logoutIcon)
            }

        }
        .padding(.horizontal, 24)
        .padding(.vertical, 16)
    }
    private var TopCustomerInfo: some View {
        VStack(alignment: .center, spacing: 24) {
            VStack(alignment: .center, spacing: 5) {
                HStack(spacing: 4) {
                    Text("\(signupViewModel.selectedNickname)")
                        .font(.mainTextSemiBold24)
                        .foregroundStyle(Color.green01)
                    Text("님")
                        .font(.mainTextSemiBold24)
                }
                Text("환영합니다! 🙌🏻")
                    .font(.mainTextSemiBold24)
            }
            
            HStack(spacing: 10) {
                OtherTopItemBox(title: "별 히스토리", image: "starHistoryIcon")
                OtherTopItemBox(title: "전자영수증", image: "receiptIcon")
                OtherTopItemBox(title: "나만의 메뉴", image: "myMenuIcon")
            }
        }
    }
    
    private var PaySection: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Pay")
                .font(.mainTextSemiBold18)
            
            VStack(alignment: .leading, spacing: 0) {
                HStack() {
                    OtherItemBox(title: "스타벅스 카드 등록", image: "cardIcon")
                    Spacer()
                    OtherItemBox(title: "카드 교환권 등록", image: "cardPlusIcon")
                }
                .padding(.vertical, 16)
                
                HStack() {
                    OtherItemBox(title: "쿠폰 등록", image: "couponIcon")
                    Spacer()
                    OtherItemBox(title: "쿠폰 히스토리", image: "couponHistoryIcon")
                }
                .padding(.vertical, 16)
                
                Divider()
            }
        }
    }
    
    private var CustomerSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("고객지원")
                .font(.mainTextSemiBold18)
            
            VStack(alignment: .leading, spacing: 0) {
                HStack() {
                    OtherItemBox(title: "스토어 케어", image: "storeCareIcon")
                    Spacer()
                    OtherItemBox(title: "고객의 소리", image: "customerSoundIcon")
                }
                .padding(.vertical, 16)
                
                HStack() {
                    OtherItemBox(title: "매장 정보", image: "storeInfoIcon")
                    Spacer()
                    OtherItemBox(title: "반납기 정보", image: "returnIcon")
                }
                .padding(.vertical, 16)
                
                HStack() {
                    OtherItemBox(title: "마이 스타벅스 리뷰", image: "myReviewIcon")
                    Spacer()
                }
                .padding(.vertical, 16)
            }
        }
    }
    
}



#Preview {
    OtherView()
}
