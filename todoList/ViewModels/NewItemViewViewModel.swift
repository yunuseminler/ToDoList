//
//  NewItemViewViewModel.swift
//  todoList
//
//  Created by Yunus Emre Eminler on 26.09.2024.
//

import Foundation

class NewItemViewViewModel: ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()
    @Published var showAlert = false
    init() {}

    func save() {}

    var canSave: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }

        guard dueDate >= Date().addingTimeInterval(-86400) else {
            return false
        }

        return true
    }
}
