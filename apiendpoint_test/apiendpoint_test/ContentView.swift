//
//  ContentView.swift
//  apiendpoint_test
//
//  Created by user on 2023/12/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button(action:accessServer){
                Text("serverと通信")
            }
        }
        .padding()
    }
}

func accessServer () {
    print("ここは通ってる！！！")
    let url = URL(string: "http://localhost:8080")!  //URLを生成
    var request = URLRequest(url: url)               //Requestを生成
    let task = URLSession.shared.dataTask(with: request) { (data, response, error) in  //非同期で通信を行う
        guard let data = data else { return }
        do {
            let object = try JSONSerialization.jsonObject(with: data, options: [])  // DataをJsonに変換
            print(object)
        } catch let error {
            print(error)
        }
    }
    task.resume()
}

#Preview {
    ContentView()
}
