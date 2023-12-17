//
//  ContentView.swift
//  toggleCustom
//
//  Created by user on 2023/12/17.
//

import SwiftUI

struct ContentView: View {
    @State var isMan = true
    var body: some View {
        VStack {
            Toggle("Toggle", isOn: $isMan)
                .toggleStyle(GenderToggleStyle())
        }
        .padding()
    }
}

struct GenderToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Button("男性") {
                configuration.isOn.toggle()
            }
            .disabled(configuration.isOn)
            Button("女性") {
                configuration.isOn.toggle()
            }
            .disabled(!configuration.isOn)
        }
    }
}

#Preview {
    ContentView()
}
