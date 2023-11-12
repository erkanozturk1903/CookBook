//
//  AppStorageSceneStorage.swift
//  CookBook
//
//  Created by Erkan Ozturk on 10.11.2023.
//

import SwiftUI

struct AppStorageSceneStorage: View {
    @AppStorage("username") var username: String = "Anonymous"
    var body: some View {
        VStack {
            Text("Welcome, \(username)!")

            Button("Log in") {
                username = "SuzGupta"
            }
        }
    }
}

struct AppStorageSceneStorage_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageSceneStorage()
    }
}
