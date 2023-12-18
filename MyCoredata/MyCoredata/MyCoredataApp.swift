//
//  MyCoredataApp.swift
//  MyCoredata
//
//  Created by user on 2023/12/18.
//

import SwiftUI

@main
struct MyCoredataApp: App {
    //PersistenceControllerの構造体をインスタンス化する
    let persistenceController = PersistenceController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
            //おまじない
        }
    }
}
