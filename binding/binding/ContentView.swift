//
//  ContentView.swift
//  binding
//
//  Created by user on 2023/12/17.
//

import SwiftUI

struct ContentView: View {
    @State var isShowing = false
    var body: some View {
        VStack {
            Button(action:{isShowing = true}) {
                Text("AnotherViewを出す")
            }
            .sheet(isPresented: $isShowing, content: {
                AnotherView(isShowing: $isShowing)
            })
        }
        .padding()
    }
}

struct AnotherView: View {
    @Binding var isShowing:Bool
    var body: some View {
        Text(isShowing.description) //Bool型をString型に変更するために、descriptionを記載している
    }
}

#Preview {
    ContentView()
}
