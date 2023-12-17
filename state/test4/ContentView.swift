//
//  ContentView.swift
//  test4
//
//  Created by user on 2023/12/17.
//

import SwiftUI

struct ContentView: View {
    @State var lastName = "田中"
    //@stateは変更が入るたびに更新がかかる
    let firstName = "太郎"
    var body: some View {
        VStack {
            Button(action:{self.lastName = "島田"}) {
                Text("ボタンを押したら名前が変わります")
            }
            Text(lastName + firstName)
        }
        
    }
}

#Preview {
    ContentView()
}
