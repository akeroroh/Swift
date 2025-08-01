//
//  ReceiptView.swift
//  Starbucks_Anne
//
//  Created by 진아현 on 7/30/25.
//

import SwiftUI
import PhotosUI
import SwiftData

struct ReceiptView: View {
    //MARK: - PROPERTIES
    @Bindable var router: NavigationRouter
    
    @State private var showCamera = false
    @State private var showPhotoPicker = false
    @State private var showActionSheet = false
    @State private var showReceipt = false
    @State private var selectedReceipt: Data? = nil
    @State private var totalSum: Int = 0
    
    @Bindable var OCRViewModel: OCRViewModel = .init()
    
    @State private var capturedImage: UIImage?
    @State private var selectedItems: [PhotosPickerItem] = []
    
    @Query(sort: \ReceiptsModel.createdAt, order: .reverse) private var receipts: [ReceiptsModel]
    @Environment(\.modelContext) private var context
    
    //MARK: - BODY
    var body: some View {
        if showReceipt {
            receiptView
        } else {
            VStack {
                ReceiptNavigationView
                
                VStack(spacing: 24) {
                    ReceiptAmountView
                    ReceiptItemView
                }
                .padding(.horizontal, 19)
                .padding(.vertical, 16)
                Spacer()
            }
            .navigationBarBackButtonHidden()
            .background(.white01)
            .task {
                fetchSum()
            }
        }
    }
    
    //MARK: - VIEW
    private var receiptView: some View {
        ZStack {
            VStack {
                ReceiptNavigationView
                
                VStack(spacing: 24) {
                    ReceiptAmountView
                    ReceiptItemView
                }
                .padding(.horizontal, 19)
                .padding(.vertical, 16)
                
                Spacer()
            }
            .navigationBarBackButtonHidden()
            .background(.white01)
            
            Rectangle()
                .ignoresSafeArea()
                .foregroundStyle(Color.black03.opacity(0.8))
            
            ZStack(alignment: .topTrailing) {
                if let data = selectedReceipt, let image = UIImage(data: data) {
                    Image(uiImage: image)
                }
                Button {
                    showReceipt = false
                } label: {
                    Image(systemName: "xmark")
                        .resizable()
                        .frame(width: 18, height: 18)
                        .foregroundStyle(Color.gray04)
                        .padding(.trailing, 16)
                        .padding(.top, 18)
                }
            }
        }
    }
    
    private var ReceiptNavigationView: some View {
        ZStack {
            Text("전자영수증")
                .font(.mainTextMedium16)
            
            HStack {
                Button {
                    router.pop()
                } label: {
                    Image(systemName: "chevron.backward")
                        .foregroundStyle(Color.black03)
                }
                Spacer()
                Button {
                    selectedItems.removeAll()
                    showActionSheet = true
                } label: {
                    Image(systemName: "plus")
                        .foregroundStyle(Color.black03)
                }
            }
        }
        .padding(.vertical, 22)
        .padding(.horizontal, 13)
        .background(Color.white)
        .confirmationDialog("영수증을 어떻게 추가할까요?", isPresented: $showActionSheet, titleVisibility: .visible) {
            Button("앨범에서 가져오기") {
                showPhotoPicker = true
            }

            Button("카메라로 촬영하기") {
                showCamera = true
            }

            Button("취소", role: .cancel) {}
        }
        .sheet(isPresented: $showCamera) {
            CameraPicker { image in
                OCRViewModel.addImage(image)
                self.capturedImage = image
            }
        }
        .photosPicker(isPresented: $showPhotoPicker, selection: $selectedItems, maxSelectionCount: 5, matching: .images)
        .onChange(of: selectedItems) { oldItems, newItems in
            for item in newItems {
                Task {
                    if let data = try? await item.loadTransferable(type: Data.self),
                       let image = UIImage(data: data) {
                        OCRViewModel.addImage(image)
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                            if let currentReceipt = OCRViewModel.currentReceipt {
                                addReceipt(receipt: currentReceipt)
                                fetchSum()
                            }
                        }
                    }
                }
            }
        }
    }
    
    private var ReceiptAmountView: some View {
        HStack {
            Text("총")
                .font(.mainTextMedium18)
            Text("\(receipts.count)건")
                .font(.mainTextMedium18)
                .foregroundStyle(Color.brown01)
            
            Spacer()
            
            Text("사용합계")
                .font(.mainTextMedium18)
            Text("\(totalSum)")
                .font(.mainTextMedium18)
                .foregroundStyle(Color.brown01)
        }
    }

    
    private var ReceiptItemView: some View {
        List {
            ForEach(receipts) { receipt in
                VStack(spacing: 14) {
                    HStack {
                        VStack(alignment: .leading, spacing: 9) {
                            Text(receipt.store)
                                .font(.mainTextSemiBold18)
                            Text(receipt.orderAt)
                                .font(.mainTextMedium16)
                                .foregroundStyle(Color.gray03)
                            Text("\(receipt.totalAmount)")
                                .font(.mainTextSemiBold18)
                                .foregroundStyle(Color.brown02)
                        }
                        
                        Spacer()
                        
                        Button {
                            showReceipt = true
                            selectedReceipt = receipt.photo
                        } label: {
                            Image(.receiptDollar)
                        }
                    }
                    
                    Divider()
                }
                .listRowSeparator(.hidden)
                .listRowBackground(Color.white01)
            }
            .onDelete(perform: deleteReceipt)
            .background(Color.white01)
        }
        .scrollContentBackground(.hidden)
        .background(Color.white01)
        .listStyle(.grouped)
    }
    
    //MARK: - FUNCTION
    private func addReceipt(receipt: ReceiptsModel) {
        context.insert(receipt)
        try? context.save()
    }
    
    private func totalPriceSum() -> Int {
        let total = receipts.map{ $0.totalAmount }.reduce(0, +)
        return total
    }
    
    private func deleteReceipt(at offsets: IndexSet) {
        for index in offsets {
            context.delete(receipts[index])
        }
        try? context.save()
        fetchSum()
    }
    
    func fetchSum() {
        totalSum = 0
        for receipt in receipts {
            totalSum += receipt.totalAmount
        }
    }
}

#Preview {
    ReceiptView(router: .init())
}
