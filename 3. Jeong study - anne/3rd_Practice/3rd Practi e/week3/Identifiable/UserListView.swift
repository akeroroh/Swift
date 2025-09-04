//
//  UserListView.swift
//  3rd Practi e
//
//  Created by 진아현 on 7/15/25.
//

import SwiftUI
import Observation

struct UserListView: View {
//    @State private var users = [
//        User(name: "Alice", age: 24),
//        User(name: "Bob", age: 30),
//        User(name: "Charlie", age: 28)
//    ]
//    
//    @State private var selectedUser: User?
//
//    var body: some View {
//        NavigationView {
//            List {
//                ForEach($users) { $user in
//                    NavigationLink(destination: UserEditView(user: $user)) {
//                        HStack {
//                            Text(user.name)
//                            Spacer()
//                            Text("\(user.age) years old")
//                        }
//                    }
//                }
//            }
//            .navigationTitle("Users")
//        }
//    }
    @State private var userViewModel: UserViewModel = .init()

    var body: some View {
        NavigationStack {
            List {
                ForEach(userViewModel.users.indices, id: \.self) { index in
                    NavigationLink(destination: UserEditView(user: $userViewModel.users[index])) {
                        HStack {
                            Text(userViewModel.users[index].name)
                            Spacer()
                            Text("\(userViewModel.users[index].age) years old")
                        }
                    }
                }
            }
            .navigationTitle("Users")
        }
    }
}

#Preview {
    UserListView()
}
