//
//  TabView.swift
//  Starbucks_Anne
//
//  Created by 진아현 on 7/10/25.
//

import SwiftUI

struct TabBarView: View {
    //MARK: - PROPERTIES
    var selectedTab: Int = 0
    
    @State var shopViewModel: ShopViewModel
    @State private var router = NavigationRouter()
    
    //MARK: - BODY
    var body: some View {
        NavigationStack(path: $router.path) {
            TabView {
                Tab(content: {
                    HomeView(router: router)
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
                    ShopView(shopViewModel: shopViewModel)
                }, label: {
                    Text("Shop")
                    Image(.shopIcon)
                        .renderingMode(.template)
                })
                
                Tab(content: {
                    OtherView(router: router)
                }, label: {
                    VStack(spacing: 10) {
                        Text("Other")
                        Image(.otherIcon)
                            .renderingMode(.template)
                    }
                })
            }
            .navigationBarBackButtonHidden(true)
            .tint(Color.green02)
        }
        .navigationDestination(for: Route.self) { route in
            switch route {
            case .home:
                TabBarView(shopViewModel: shopViewModel)
            case .signUp:
                SignupView(router: router)
            case .detail(let item):
                CoffeeDetailView(router: router, item: item)
            }
        }
    }
}

//#Preview {
//    TabBarView(router: .init())
//}
