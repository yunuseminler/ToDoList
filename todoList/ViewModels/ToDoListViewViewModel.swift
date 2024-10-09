//
//  ToDoListViewViewModel.swift
//  todoList
//
//  Created by Yunus Emre Eminler on 26.09.2024.
//
import FirebaseFirestore
import Foundation

class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemVıew = false
    private let userId: String

    init(userId: String) {
        self.userId = userId
    }

    func delete(id: String) {
        let db = Firestore.firestore()
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
