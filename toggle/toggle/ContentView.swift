//
//  ContentView.swift
//  toggle
//
//  Created by user on 2023/12/17.
//

import SwiftUI

struct ContentView: View {
    @State var flg = true
    var body: some View {
        VStack {
            Toggle(flg.description, isOn: $flg)
            //第1引数：表示の文字列、第２引数：Toggleしたい変数
        }
    }
}

#Preview {
    ContentView()
}
