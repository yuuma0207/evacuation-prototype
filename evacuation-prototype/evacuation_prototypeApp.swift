//
//  evacuation_prototypeApp.swift
//  evacuation-prototype
//
//  Created by yuuma on 2024/12/14.
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

@main
struct MyApp: App {
    @StateObject private var authViewModel = AuthViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(authViewModel)
        }
    }
}


#Preview {
    ContentView().environmentObject(AuthViewModel())
}

