//
//  SignupViewModel.swift
//  Starbucks_Anne
//
//  Created by 진아현 on 7/10/25.
//

import Foundation
import SwiftUI

class SignupViewModel: ObservableObject {
    @AppStorage("nickname") var selectedNickname: String = ""
    @AppStorage("email") var selectedEmail: String = ""
    @AppStorage("password") var selectedPassword: String = ""
    
    @Published var nickname = ""
    @Published var email = ""
    @Published var password = ""
    
    public func loginSave() {
        selectedNickname = nickname
        selectedEmail = email
        selectedPassword = password
    }
}
