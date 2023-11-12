//
//  CustomizeTheAppearanceofButton.swift
//  CookBook
//
//  Created by Erkan Ozturk on 12.11.2023.
//

import SwiftUI

struct CustomizeTheAppearanceofButton: View {
    var body: some View {
        VStack {
            Button("Press Me!") {

            }
            .padding()
            .background(.orange)
            .foregroundColor(.white)
            .font(.title2)
            .clipShape(RoundedRectangle(cornerRadius: 10))

            
        }
    }
}

struct CustomizeTheAppearanceofButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomizeTheAppearanceofButton()
    }
}
