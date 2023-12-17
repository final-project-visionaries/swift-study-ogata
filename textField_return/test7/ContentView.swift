//
//  ContentView.swift
//  test7
//
//  Created by user on 2023/12/17.
//

import SwiftUI

struct ContentView: View {
    @State var favoriteAnimal = ""
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .padding()
            TextField("好きな動物を入力してください", text: $favoriteAnimal)
                .onSubmit{
                    favoriteAnimal=""
                }
            Text("好きな動物は\(favoriteAnimal)")
                .padding()

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
