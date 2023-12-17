//
//  UserData.swift
//  test5
//
//  Created by user on 2023/12/17.
//

import SwiftUI

class UserData : ObservableObject {
    @Published var name : String
    @Published var age : Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
