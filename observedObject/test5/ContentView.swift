//
//  ContentView.swift
//  test5
//
//  Created by user on 2023/12/17.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var userData = UserData(name: "鈴木", age:20)
    var body: some View {
        VStack {
            Button(action: {
                userData.name = "佐藤"
            }) {
                Text("名前を変える")
                    .padding()
            }
            Button(action: {
                userData.age += 1
            }) {
                Text("年齢を１つあげる")
                    .padding()
            }
            Text("\(userData.name)です。年齢は\(userData.age)です。")
        }
    }
}



#Preview {
    ContentView()
}
