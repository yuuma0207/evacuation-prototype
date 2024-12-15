//
//  evacuation_prototypeApp.swift
//  evacuation-prototype
//
//  Created by yuuma on 2024/12/14.
//

import SwiftUI



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

