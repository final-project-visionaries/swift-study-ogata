//
//  ContentView.swift
//  test8
//
//  Created by user on 2023/12/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("concon")
                .resizable()
                .scaledToFit() //縦横比を固定しながらリサイズをするためのやつ
                .frame(width:300,height:300,alignment: .center)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
