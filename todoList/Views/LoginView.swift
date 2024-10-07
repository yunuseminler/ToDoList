//
//  LoginView.swift
//  todoList
//
//  Created by Yunus Emre Eminler on 26.09.2024.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    var body: some View {
        NavigationView {
            VStack {
                HeaderView(title: "To Do List", subtitle: "Get This Done", angle: 15, background: .pink)

                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage).foregroundStyle(.red)
                    }
                    TextField("Email Address", text: $viewModel.email).textFieldStyle(DefaultTextFieldStyle()).autocorrectionDisabled().autocapitalization(.none)
                    SecureField("Password", text: $viewModel.password).textFieldStyle(DefaultTextFieldStyle())
                    TLButton(title: "Login", background: .blue) {
                        viewModel.login()
                    }
                }.scrollContentBackground(.hidden)

                VStack {
                    Text("New Around Here ?")
                    NavigationLink("Create An Account", destination: RegisterView())
                }.padding(.bottom, 50)
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
