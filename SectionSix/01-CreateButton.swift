//
//  CreateButton.swift
//  CookBook
//
//  Created by Erkan Ozturk on 12.11.2023.
//

import SwiftUI

struct CreateButton: View {
    var body: some View {
        Button("Click me!") {
            //action to perform when button is tapped
        }
        .font(.headline)
        .padding()
        .foregroundColor(.white)
        .background(.blue)
        .cornerRadius(10)
    }
}

struct CreateButton_Previews: PreviewProvider {
    static var previews: some View {
        CreateButton()
    }
}
