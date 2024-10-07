//
//  HeaderView.swift
//  todoList
//
//  Created by Yunus Emre Eminler on 3.10.2024.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle:Double
    let background: Color
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 0).foregroundColor(background).rotationEffect(Angle(degrees: angle))
            VStack {
                Text(title).font(.system(size: 50)).foregroundColor(.white).bold()
                Text(subtitle).font(.system(size: 30)).foregroundColor(.white)

            }.padding(.top, 80)
        }.frame(width: UIScreen.main.bounds.width * 3, height: 300).offset(y: -150)
    }
}

#Preview {
    HeaderView(title: "To Do List", subtitle: "Get This Done", angle: 15, background: .pink)
}
