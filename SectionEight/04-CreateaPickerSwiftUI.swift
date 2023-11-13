//
//  CreateaPickerSwiftUI.swift
//  CookBook
//
//  Created by Erkan Ozturk on 13.11.2023.
//

import SwiftUI

struct CreateaPickerSwiftUI: View {

    let options = ["Frida Kahlo", "Georgia O'Keeffe", "Mary Cassatt", "Lee Krasner", "Helen Frankenthaler"]

    @State private var selectedOption = 0

    var body: some View {
        VStack {
            HStack {
                Image(systemName: "paintpalette")
                    .foregroundColor(.blue)
                    .padding()

                Text("Favorite artist:")
                    .font(.title2)

                Text(options[selectedOption])
                    .font(.title)
                    .padding(.leading, 4)
            }
            .padding()

            Picker("Options", selection: $selectedOption) {
                ForEach(options.indices, id: \.self) { index in
                    Text(options[index])
                        .font(.headline)
                }
            }
            .pickerStyle(.wheel)
            .padding()
        }
    }
}

struct CreateaPickerSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        CreateaPickerSwiftUI()
    }
}
