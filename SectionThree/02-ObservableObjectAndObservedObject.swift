//
//  ObservableObjectAndObservedObject.swift
//  CookBook
//
//  Created by Erkan Ozturk on 10.11.2023.
//

import SwiftUI

class UserSetting: ObservableObject {
    @Published var username = "Anonymous"
}

struct ObservableObjectAndObservedObject: View {
    @ObservedObject var settings = UserSetting()

    var body: some View {
        VStack {
            Text("Hello, \(settings.username)!")
            Button("Change Username") {
                settings.username = "John Doe"
            }
        }
    }
}

struct ObservableObjectAndObservedObject_Previews: PreviewProvider {
    static var previews: some View {
        ObservableObjectAndObservedObject()
    }
}
