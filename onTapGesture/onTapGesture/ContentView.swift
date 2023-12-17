//
//  ContentView.swift
//  onTapGesture
//
//  Created by user on 2023/12/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .onTapGesture {
                    print("タップされた")
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
