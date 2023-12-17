//
//  ContentView.swift
//  fullscreencover
//
//  Created by user on 2023/12/17.
//

import SwiftUI

struct ContentView: View {
    @State var showingFullScreenCover = false
    var body: some View {
        VStack {
            Button(action:{showingFullScreenCover = true}) {
                Text("Fullスクリーンカバーを表示")
            }
            .fullScreenCover(isPresented: $showingFullScreenCover, content: {
                FullsceenCoverView()
            })
        }
        
    }
}

struct FullsceenCoverView : View {
    var body: some View {
        Text("FullScreenCoverView")
    }
}

#Preview {
    ContentView()
}
