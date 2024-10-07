//
//  User.swift
//  todoList
//
//  Created by Yunus Emre Eminler on 26.09.2024.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
