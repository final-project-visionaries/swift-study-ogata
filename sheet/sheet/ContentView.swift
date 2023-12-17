//
//  ContentView.swift
//  sheet
//
//  Created by user on 2023/12/17.
//

import SwiftUI

struct ContentView: View {
    @State var showingSheet = false
    
    
    var body: some View {
        VStack {
            Button(action:{showingSheet = !showingSheet}) {
                Text("sheetを表示")
            }
            .sheet(isPresented: $showingSheet, content: {
               SheetView()
            })
        }
        
    }
}

struct SheetView: View {
    var body: some View {
        Text("SheetView")
    }
}

#Preview {
    ContentView()
}
