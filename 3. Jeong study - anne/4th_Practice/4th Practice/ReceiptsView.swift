//
//  ReceiptsView.swift
//  4th Practice
//
//  Created by 진아현 on 7/29/25.
//

import SwiftUI

struct ReceiptsView: View {
    //MARK: - PROPERTIES
    @Bindable var viewModel: ReceiptsViewModel = .init()
    
    //MARK: - BODY
    var body: some View {
        VStack(spacing: 42) {
            HStack {
                ForEach(ReceiptSegment.allCases, id: \.id) { segment in
                    topSegment(segment: segment)
                }
            }
            
            tabView
        }
        .frame(maxWidth: 337, maxHeight: .infinity)
    }
    
    //MARK: - VIEW
    @ViewBuilder
    func topSegment(segment: ReceiptSegment) -> some View {
        VStack(spacing: 0) {
            Text(segment.title)
                .foregroundStyle(Color.black)
                .font(.system(size: 40))
                .onTapGesture {
                    viewModel.selectedSegment = segment
                }
            
            if viewModel.selectedSegment == segment {
                Rectangle()
                    .fill(Color.black)
                    .frame(width: 116, height: 2)
            }
        }
        .frame(maxWidth: .infinity)
        
        if segment == .first {
            Spacer()
        }
    }
    
    private var tabView: some View {
        TabView(selection: $viewModel.selectedSegment, content: {
            ForEach(ReceiptSegment.allCases, id: \.id) { segment in
                VStack(spacing: 10) {
                    Image(segment.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 490)
                    
                    if viewModel.selectedSegment == segment {
                        if let receipt = viewModel.currentReceipt {
                            ReceiptInfoView(receipt: receipt)
                        } else {
                            ProgressView("OCR 처리 중...")
                        }
                    }
                }
                .tag(segment)
                .task {
                    viewModel.startOCR(segment)
                }
            }
        })
        .tabViewStyle(.page(indexDisplayMode: .never))
    }
}

#Preview {
    ReceiptsView()
}
