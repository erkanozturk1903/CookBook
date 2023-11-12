//
//  DisableAButton.swift
//  CookBook
//
//  Created by Erkan Ozturk on 12.11.2023.
//

import SwiftUI

struct DisableAButton: View {
    @State private var isButtonDisabled = true
    var body: some View {
        VStack {
            Button("Tap me") {
                print("Button tapped")
            }
            .disabled(isButtonDisabled)

            Button("\(isButtonDisabled ? "Enable" : "Disable") button") {
                isButtonDisabled.toggle()
            }
            .padding()
        }
    }
}

struct DisableAButton_Previews: PreviewProvider {
    static var previews: some View {
        DisableAButton()
    }
}
