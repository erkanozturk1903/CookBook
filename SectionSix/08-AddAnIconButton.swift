//
//  AddAnIconButton.swift
//  CookBook
//
//  Created by Erkan Ozturk on 12.11.2023.
//

import SwiftUI

struct AddAnIconButton: View {
    var body: some View {
        VStack {
            Button(action: {
                //Action to perform when the button is tapped
            }) {
                Label("Show Some Love!", systemImage: "heart.fill")
                    .padding()
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(10)
            }
        }
    }
}

struct AddAnIconButton_Previews: PreviewProvider {
    static var previews: some View {
        AddAnIconButton()
    }
}
