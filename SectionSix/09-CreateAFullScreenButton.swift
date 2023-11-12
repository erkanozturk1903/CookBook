//
//  CreateAFullScreenButton.swift
//  CookBook
//
//  Created by Erkan Ozturk on 12.11.2023.
//

import SwiftUI

struct CreateAFullScreenButton: View {
    var body: some View {
        FullScreenButtonView()
    }
}

struct FullScreenButtonView: View {
    var body: some View {
        Button(action: {
            print("Full Screen Button Tapped")
        }, label: {
            Text("Full Screen Button")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        })
    }
}

struct CreateAFullScreenButton_Previews: PreviewProvider {
    static var previews: some View {
        CreateAFullScreenButton()
    }
}
