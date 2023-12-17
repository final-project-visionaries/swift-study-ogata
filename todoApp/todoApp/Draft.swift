//
//  Draft.swift
//  todoApp
//
//  Created by user on 2023/12/17.
//

import SwiftUI

struct Draft: View {
    @State var taskTitle = ""
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        TextField("タスクを入力してください",text: $taskTitle)
            .onSubmit {
                self.createTask()
            }
    }
    func createTask (){
        let newTask = Task(title: self.taskTitle, checked: false )
        self.userData.tasks.insert(newTask, at : 0)
        self.userData.isEditing = false
        self.taskTitle = ""
        
    }
}



#Preview {
    Draft()
}
