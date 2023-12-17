//
//  ContentView.swift
//  test3
//
//  Created by user on 2023/12/17.
//

import SwiftUI

struct Human: Identifiable {
    let id = UUID()
    let name : String
}

struct ContentView: View {
    let humans = [
        Human(name: "田中"),
        Human(name: "佐藤"),
        Human(name: "近藤"),
    ]
    var body: some View {
        VStack {
            List {
                ForEach(0..<3) { num in
                        Text("\(num) : Hello, World")
                }
                ForEach(humans) { human in
                    Text("\(human.name)さん,こんにちは")
                }
            }
        }
        .padding()
    }
}


#Preview {
    ContentView()
}

