//
//  LoginView.swift
//  todoList
//
//  Created by Yunus Emre Eminler on 26.09.2024.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationView {
            VStack {
                HeaderView()

                Form {
                    TextField("Email Address", text: $email).textFieldStyle(DefaultTextFieldStyle())
                    TextField("Password", text: $password).textFieldStyle(DefaultTextFieldStyle())
                    Button(action: /*@START_MENU_TOKEN@*/ {}/*@END_MENU_TOKEN@*/, label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10).foregroundColor(.blue)

                            Text("Login").foregroundColor(.white).bold()
                        }
                    }).padding(.vertical)
                }.padding(.bottom,145)

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
