//
//  ContentView.swift
//  todoList
//
//  Created by Yunus Emre Eminler on 26.09.2024.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            ToDoListView()
        }
        else { LoginView() }
    }
}

#Preview {
    MainView()
}
