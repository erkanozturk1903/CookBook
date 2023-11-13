//
//  CreateCheckBoxInSwiftUI.swift
//  CookBook
//
//  Created by Erkan Ozturk on 13.11.2023.
//

import SwiftUI

struct CreateCheckBoxInSwiftUI: View {

    @State private var isChecked: Bool = false
    var body: some View {
        VStack {
            Toggle(isOn: $isChecked) {
                Text("I agree to the terms and conditions")
            }
            .toggleStyle(CheckBoxToggleStyle())
            .padding()
        }
    }
}

struct CheckBoxToggleStyle: ToggleStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        HStack{
            configuration.label
            Spacer()
            Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                .resizable()
                .frame(width: 24, height: 24)
                .onTapGesture {
                    configuration.isOn.toggle()
                }
        }
    }
}

struct CreateCheckBoxInSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        CreateCheckBoxInSwiftUI()
    }
}
