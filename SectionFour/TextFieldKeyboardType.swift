//
//  TextFieldKeyboardType.swift
//  CookBook
//
//  Created by Erkan Ozturk on 11.11.2023.
//

import SwiftUI

struct TextFieldKeyboardType: View {
    @State private var cell = ""
    var body: some View {
        TextField("Enter your cell number",text: $cell)
            .multilineTextAlignment(.center)
            .keyboardType(.phonePad)
    }
}

struct TextFieldKeyboardType_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldKeyboardType()
    }
}
