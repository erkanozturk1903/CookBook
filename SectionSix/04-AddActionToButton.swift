//
//  AddActionToButton.swift
//  CookBook
//
//  Created by Erkan Ozturk on 12.11.2023.
//

import SwiftUI

struct AddActionToButton: View {
    var body: some View {
        Button("Tap Me!") {
            print("Button was tapped")
        }
    }
}

struct AddActionToButton_Previews: PreviewProvider {
    static var previews: some View {
        AddActionToButton()
    }
}
