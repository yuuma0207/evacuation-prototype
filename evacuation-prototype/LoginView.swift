//
//  LoginView.swift
//  evacuation-prototype
//
//  Created by yuuma on 2024/12/15.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    @State private var username: String = ""
    @State private var password: String = ""

    var body: some View {
        VStack {
            TextField("Username", text: $username)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())

            SecureField("Password", text: $password)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())

            Button("Login") {
                authViewModel.login(username: username, password: password)
            }
            .padding()
            if authViewModel.isFailed {
                Text("Login failed")
            }
        }
        .padding()
    }
}

#Preview {
    LoginView().environmentObject(AuthViewModel())
}
