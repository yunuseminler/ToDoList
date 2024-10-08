//
//  ToDoListItemsView.swift
//  todoList
//
//  Created by Yunus Emre Eminler on 26.09.2024.
//

import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListViewViewModel()

    private let userId: String
    init(userId: String) {
        self.userId = userId
    }

    var body: some View {
        NavigationView {
            VStack {}.navigationTitle("To Do List").toolbar {
                Button {
                    viewModel.showingNewItemVıew = true
                } label: {
                    Image(systemName: "plus")
                }
            }.sheet(isPresented: $viewModel.showingNewItemVıew) {
                NewItemView(newItemPresented: $viewModel.showingNewItemVıew)
            }
        }
    }
}

#Preview {
    ToDoListView(userId: "")
}
