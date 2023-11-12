//
//  AddImageButton.swift
//  CookBook
//
//  Created by Erkan Ozturk on 12.11.2023.
//

import SwiftUI

struct AddImageButton: View {
    var body: some View {
        Button(action: {
            //action to perform when the button is tapped
        }) {
            Image("AvocadoFriend")
                .resizable()
                .frame(width:100, height: 100)
        }
    }
}

struct AddImageButton_Previews: PreviewProvider {
    static var previews: some View {
        AddImageButton()
    }
}
