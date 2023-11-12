//
//  CreateAToogleButton.swift
//  CookBook
//
//  Created by Erkan Ozturk on 12.11.2023.
//

import SwiftUI

struct CreateAToogleButton: View {
    @State private var isOn = false
    var body: some View {
        Toggle(isOn: $isOn) {
            Text("Switch State")
        }
        .toggleStyle(.switch)
        .padding()
    }
}

struct CreateAToogleButton_Previews: PreviewProvider {
    static var previews: some View {
        CreateAToogleButton()
    }
}
