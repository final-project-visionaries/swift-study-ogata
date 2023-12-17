//
//  ContentView.swift
//  HelloWorld
//
//  Created by user on 2023/12/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationStack{
                List {
                    Text("りんご")
                        .foregroundColor(.purple)
                    Text("レモン")
                        .foregroundColor(.purple)
                    Text("オレンジ")
                        .foregroundColor(.purple)
                }.toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Text("アイテム")
                    }
                }
            }
        
            
        }
//        .padding()
    }
}

#Preview {
    ContentView()
}
