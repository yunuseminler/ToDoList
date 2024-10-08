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
            accountView
        }
        else { LoginView() }
    }

    @ViewBuilder
    var accountView: some View {
        TabView {
            ToDoListView(userId: viewModel.currentUserId).tabItem { Label("Home", systemImage: "house") }
            ProfileView().tabItem { Label("Profile", systemImage: "person.circle")
            }
        }
    }
}

#Preview {
    MainView()
}
