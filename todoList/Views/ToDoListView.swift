//
//  ToDoListItemsView.swift
//  todoList
//
//  Created by Yunus Emre Eminler on 26.09.2024.
//

import FirebaseFirestore
import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel : ToDoListViewViewModel
    @FirestoreQuery var items: [ToDoListItem]
    
    init(userId: String) {
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/todos")
        self._viewModel = StateObject(wrappedValue: ToDoListViewViewModel(userId: userId))
    }

    var body: some View {
        NavigationView {
            VStack {
                List(items) { item in
                    ToDoListItemView(item: item).swipeActions {
                        Button {
                            viewModel.delete(id: item.id)
                        } label: {
                            Text("Delete")
                        }.tint(.red)
                    }
                }
            }.navigationTitle("To Do List").toolbar {
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
    ToDoListView(userId: "YH7HbRS54le9q776BX3xD1Z8zSf2")
}
