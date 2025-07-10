//
//  TabView.swift
//  Starbucks_Anne
//
//  Created by 진아현 on 7/10/25.
//

import SwiftUI

struct TabBarView: View {
    //MARK: - PROPERTIES
    private var selectedTab: Int = 0
    
    //MARK: - BODY
    var body: some View {
        TabView {
            Tab(content: {
                EmptyView()
            }, label: {
                Text("Home")
                Image(.homeIcon)
                    .renderingMode(.template)
            })
            
            Tab(content: {
                EmptyView()
            }, label: {
                Text("Pay")
                Image(.payIcon)
                    .renderingMode(.template)
            })
            
            Tab(content: {
                EmptyView()
            }, label: {
                Text("Order")
                Image(.orderIcon)
                    .renderingMode(.template)
            })
            
            Tab(content: {
                EmptyView()
            }, label: {
                Text("Shop")
                Image(.shopIcon)
                    .renderingMode(.template)
            })
            
            Tab(content: {
                OtherView()
            }, label: {
                VStack(spacing: 10) {
                    Text("Other")
                    Image(.otherIcon)
                        .renderingMode(.template)
                }
            })
        }
        .tint(Color.green02)
    }
    
    
}

#Preview {
    TabBarView()
}
