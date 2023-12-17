//
//  ContentView.swift
//  test2
//
//  Created by user on 2023/12/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Hello")
                Text("Hello")
                Text("Hello")
            }
            HStack {
                Text("こんにちは")
                    .font(.largeTitle)
                Text("こんにちは")
                    .font(.title)
                Text("こんにちは")
                    .font(.body)
            }
            Button(action: Report) {
                Text("ボタンを押してください")
            }
            Button(action: {print("クロージャ。ボタン押されました")}) {
                Text("ボタンを押してください(クロージャー)")
            }
            
        }
        
    }
}

func Report(){
    print("ボタンが押されました")
}

#Preview {
    ContentView()
}
