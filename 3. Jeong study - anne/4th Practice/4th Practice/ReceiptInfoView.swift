//
//  ReceiptInfoView.swift
//  4th Practice
//
//  Created by 진아현 on 7/29/25.
//

import SwiftUI

struct ReceiptInfoView: View {
    //MARK: - PROPERTIES
    let receipt: ReceiptsModel
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("주문자: \(receipt.orderer)")
            Text("장소: \(receipt.store)")
            Text("마신 음료: \(receipt.menuItems.joined(separator: ", "))")
            Text("결제 금액: \(receipt.totalAmount)원")
            Text("주문번호: \(receipt.orderNumber)")
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}
