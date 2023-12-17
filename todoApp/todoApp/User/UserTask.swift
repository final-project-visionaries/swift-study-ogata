//
//  UserTask.swift
//  todoApp
//
//  Created by user on 2023/12/17.
//

import SwiftUI


struct Task: Identifiable, Equatable {
    let id = UUID()
    var title:String
    var checked: Bool
    
    init (title:String,checked:Bool){
        self.title = title
        self.checked = checked
    }
}
