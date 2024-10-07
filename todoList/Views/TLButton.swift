//
//  TLButton.swift
//  todoList
//
//  Created by Yunus Emre Eminler on 3.10.2024.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    var body: some View {
        Button(action:  {action()}, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10).foregroundColor(background)

                Text(title).foregroundColor(.white).bold()
            }
        }).padding(.vertical)
    }
}

#Preview {
    TLButton(title: "Login", background: .blue){
        //Action
    }
}
