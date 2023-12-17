//
//  test6App.swift
//  test6
//
//  Created by user on 2023/12/17.
//

import SwiftUI

@main
struct test6App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(UserData())
        }
    }
}
