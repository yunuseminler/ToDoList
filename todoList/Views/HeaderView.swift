//
//  HeaderView.swift
//  todoList
//
//  Created by Yunus Emre Eminler on 3.10.2024.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0).foregroundColor(Color.pink).rotationEffect(Angle(degrees: 15))
            VStack {
                Text("To Do List").font(.system(size: 50)).foregroundColor(.white).bold()
                Text("Get Things Done").font(.system(size: 30)).foregroundColor(.white)

            }.padding(.top, 30)
        }.frame(width: UIScreen.main.bounds.width * 3, height: 300).offset(y: -100)
    }
}

#Preview {
    HeaderView()
}
