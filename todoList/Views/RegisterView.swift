//
//  RegisterView.swift
//  todoList
//
//  Created by Yunus Emre Eminler on 26.09.2024.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    var body: some View {
        VStack {
            HeaderView(title: "Register", subtitle: "Start organizing todos", angle: -15, background: .orange)

            Form {
                if !viewModel.errorMessage.isEmpty {
                    Text(viewModel.errorMessage).foregroundStyle(.red)
                }
                TextField("Full Name", text: $viewModel.name).textFieldStyle(DefaultTextFieldStyle()).autocorrectionDisabled().autocapitalization(.none)

                TextField("Email Address", text: $viewModel.email).textFieldStyle(DefaultTextFieldStyle()).autocorrectionDisabled().autocapitalization(.none)
                SecureField("Password", text: $viewModel.password).textFieldStyle(DefaultTextFieldStyle())
                TLButton(title: "Create Account", background: .green) { viewModel.register() }
            }.offset(y: -50).scrollContentBackground(.hidden)

            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
