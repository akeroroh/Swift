//
//  ShowView.swift
//  Starbucks_Anne
//
//  Created by 진아현 on 7/28/25.
//

import SwiftUI

struct ShopView: View {
    //MARK: - PROPERTIES
    @State var shopViewModel: ShopViewModel
    @State var selection = 0
    
    let grid = Array(repeating: GridItem(.flexible()), count: 2)
    
    //MARK: - BODY
    var body: some View {
        ScrollView {
            TopBannerSection
            Spacer()
            AllProductsSection
            Spacer()
            BestProductSection
            Spacer()
            NewProductSection
        }
        .background(.white01)
        .contentMargins(.horizontal, 16, for: .scrollContent)
        .contentMargins(.bottom, 100, for: .scrollContent)
    }
    
    //MARK: - VIEW
    private var TopBannerSection: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Starbucks Online Store")
                .font(.mainTextBold24)
            
            ScrollView(.horizontal) {
                LazyHStack(spacing: 28) {
                    ForEach(1...3, id: \.self) { num in
                        Image("banner\(num)")
                    }
                }
            }
        }
    }
    
    private var AllProductsSection: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("All Products")
                .font(.mainTextSemiBold24)
            
            ScrollView(.horizontal) {
                LazyHStack(spacing: 12) {
                    ForEach(shopViewModel.shopAllProducts, id: \.id) { item in
                        CircleImageCard(name: item.name, image: item.image)
                    }
                }
            }
        }
    }
    
    private var BestProductSection: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Best Items")
                .font(.mainTextSemiBold24)
            
            VStack(alignment: .center) {
                
                TabView(selection: $selection) {
                    LazyVGrid(columns: grid) {
                        ForEach(shopViewModel.shopBestProducts[0..<4], id: \.id) { item in
                            SquareItemImageCard(name: item.name, image: item.image, option: item.option)
                        }
                    }
                    .tag(0)
                    
                    LazyVGrid(columns: grid) {
                        ForEach(shopViewModel.shopBestProducts[4..<8], id: \.id) { item in
                            SquareItemImageCard(name: item.name, image: item.image, option: item.option)
                        }
                    }
                    .tag(1)
                    
                }
                .frame(height: 417)
                .padding(.bottom, 31)
                .tabViewStyle(.page)
                
                PageControl(numberOfPages: 2, currentPage: $selection)
            }
        }
    }
    
    private var NewProductSection: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("New Products")
                .font(.mainTextSemiBold24)
            
            LazyVGrid(columns: grid) {
                ForEach(shopViewModel.shopNewProducts, id: \.id) { item in
                    SquareItemImageCard(name: item.name, image: item.image, option: item.option)
                }
            }
        }
    }
}

#Preview {
    ShopView(shopViewModel: .init())
}
