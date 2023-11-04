//
//  ButtonCreated.swift
//  CookBook
//
//  Created by Erkan Ozturk on 4.11.2023.
//

import SwiftUI

struct ButtonCreated: View {
    var body: some View {
        Button(action: {
            print("Button Pressed")
        }, label: {
            Text("Press Me!")
                .font(.largeTitle)
                .foregroundColor(.white)
        })
        .padding()
        .background(LinearGradient(gradient: Gradient(colors: [.purple, .pink]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .cornerRadius(10)
    }
}

struct ButtonCreated_Previews: PreviewProvider {
    static var previews: some View {
        ButtonCreated()
    }
}
