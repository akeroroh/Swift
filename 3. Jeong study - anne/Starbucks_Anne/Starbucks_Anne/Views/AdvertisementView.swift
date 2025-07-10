//
//  AdvertisementView.swift
//  Starbucks_Anne
//
//  Created by 진아현 on 7/10/25.
//

import SwiftUI

struct AdvertisementView: View {
    //MARK: - PROPERTIES
    @Environment(\.dismiss) private var dismiss
    
    //MARK: - BODY
    var body: some View {
        VStack {
            Image(.advertise)
                .resizable()
                .scaledToFill()
                .frame(height: 720)
            
            Spacer()
            
            advertiseBottomButton
            
        }
        .padding(.bottom, 36)
    }
    
    //MARK: - VIEW
    private var advertiseBottomButton: some View {
        VStack(alignment: .trailing, spacing: 19) {
            Button {
                print("자세히 보기")
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(Color.green01)
                        .frame(height: 58)
                    
                    Text("자세히 보기")
                        .font(.mainTextMedium18)
                        .foregroundStyle(Color.white01)
                }
            }
            
            Button {
                dismiss()
            } label: {
                Text("X 닫기")
                    .font(.mainTextLight14)
                    .foregroundStyle(.gray05)
            }
            .padding(.trailing, 19)
            
        }
        .padding(.horizontal, 18)
    }
}

#Preview {
    AdvertisementView()
}
