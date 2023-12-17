//
//  ListRow.swift
//  todoApp
//
//  Created by user on 2023/12/17.
//

import SwiftUI

struct ListRow: View {
    let task: String
    var isCheck: Bool
    var body: some View {
        
        HStack {
            if isCheck {
                Text("☑︎")
                Text(task)
                    .strikethrough()
                    .fontWeight(.ultraLight)
            } else {
                Text("◻︎")
                Text(task)
            }
            
        }
    }
}

#Preview {
    ListRow(task: "temp", isCheck: true)
}
