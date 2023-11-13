//
//  CreateColorPickerSwiftUI.swift
//  CookBook
//
//  Created by Erkan Ozturk on 13.11.2023.
//

import SwiftUI

struct CreateColorPickerSwiftUI: View {
    @State private var colorChoice = Color.white
    var body: some View {
        VStack {
            ColorPicker("Choose your color", selection: $colorChoice)
                .padding()

            Text("You chose: ")
                .font(.title)

            Rectangle()
                .fill(colorChoice)
                .frame(width: 100, height: 100)
                .padding()
        }
    }
}

struct CreateColorPickerSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        CreateColorPickerSwiftUI()
    }
}
