//
//  AuthViewModel.swift
//  evacuation-prototype
//
//  Created by yuuma on 2024/12/15.
//

import SwiftUI

class AuthViewModel: ObservableObject {
    @Published var isLoggedIn: Bool = false
    @Published var isFailed: Bool = false
    
    func login(username: String, password: String) {
        // ダミーロジック
        if username == "あ"  {
            isLoggedIn = true
            isFailed = false
        } else {
            isFailed = true
        }
    }
    func logout() {
        isLoggedIn = false
    }
}
