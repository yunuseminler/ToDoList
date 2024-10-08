//
//  NewItemvİEW.swift
//  todoList
//
//  Created by Yunus Emre Eminler on 26.09.2024.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewViewModel()
    @Binding var newItemPresented: Bool

    var body: some View {
        VStack {
            Text("New Item").font(.system(size: 32)).bold().padding(.top, 20)

            Form {
                TextField("Title", text: $viewModel.title).textFieldStyle(DefaultTextFieldStyle())

                DatePicker("Due Date", selection: $viewModel.dueDate).datePickerStyle(GraphicalDatePickerStyle())

                TLButton(title: "Save", background: .pink) {
                    if viewModel.canSave {
                        viewModel.save()
                        newItemPresented = false
                    }
                    else {
                        viewModel.showAlert = true
                    }
                }
            }.alert(isPresented: $viewModel.showAlert) {
                Alert(title: Text("Error"), message: Text("Please fill in all fields ans select due date that is today or newer "))
            }
        }
    }
}

#Preview {
    NewItemView(newItemPresented: Binding(get: { true }, set: { _ in }))
}
