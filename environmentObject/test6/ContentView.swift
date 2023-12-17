//
//  ContentView.swift
//  test6
//
//  Created by user on 2023/12/17.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var userData: UserData
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .padding()
            Button (action: {userData.age += 1}) {
                Text("年齢を増やす")
            }
            Text("ContentView : \(userData.name)の年齢は\(userData.age)です")
                .padding()
            AnotherContentView()
        }
    }
}
struct AnotherContentView: View {
    @EnvironmentObject var userData: UserData
    var body: some View {
        Text("AnotherContentView : \(userData.name)の年齢は\(userData.age)です")
    }
}

#Preview {
    ContentView()
        .environmentObject(UserData())
}
