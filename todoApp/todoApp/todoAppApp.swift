//
//  todoAppApp.swift
//  todoApp
//
//  Created by user on 2023/12/17.
//

import SwiftUI

@main
struct todoAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(UserData())
        }
    }
}
