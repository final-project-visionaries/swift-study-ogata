//
//  UserData.swift
//  todoApp
//
//  Created by user on 2023/12/17.
//

import SwiftUI

class UserData: ObservableObject {
    @Published var tasks = [
        Task(title: "散歩", checked: false),
        Task(title: "料理", checked: false),
        Task(title: "筋トレ", checked: true),
    ]
    
    @Published var isEditing:Bool = false
}
