//
//  MainView.swift
//  evacuation-prototype
//
//  Created by yuuma on 2024/12/15.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var authViewModel: AuthViewModel

    var body: some View {
        VStack {
            Text("Welcome to the Main View!")
                .font(.largeTitle)
                .padding()

            Button("Log Out") {
                authViewModel.logout()// ログアウト時にログイン状態をリセット
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.red)
            .cornerRadius(8)
        }
    }
}

#Preview {
    MainView().environmentObject(AuthViewModel())
}
