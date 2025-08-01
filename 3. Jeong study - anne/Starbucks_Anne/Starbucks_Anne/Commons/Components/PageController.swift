//
//  PageController.swift
//  Starbucks_Anne
//
//  Created by 진아현 on 7/29/25.
//

import SwiftUI

struct PageControl: View {
    //MARK: - PROPERTIES
    var numberOfPages: Int
    @Binding var currentPage: Int
    
    //MARK: - BODY
    var body: some View {
        HStack(spacing: 8) {
            ForEach(0..<numberOfPages, id: \.self) { pagingIndex in
                let isCurrentPage = currentPage == pagingIndex
                let height = 5.0
                let width = 5.0
                
                Circle()
                    .stroke(isCurrentPage ? .black03 : .gray02, lineWidth: 3)
                    .fill(isCurrentPage ? .black03 : .white01)
                    .frame(width: width, height: height)
            }
        }
        .animation(.linear, value: currentPage)
    }
}

#Preview {
    PageControl(numberOfPages: 3, currentPage: .constant(0))
}
