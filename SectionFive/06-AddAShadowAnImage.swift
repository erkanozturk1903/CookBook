//
//  AddAShadowAnImage.swift
//  CookBook
//
//  Created by Erkan Ozturk on 11.11.2023.
//

import SwiftUI

struct AddAShadowAnImage: View {
    var body: some View {
        VStack {
            Image("CoolCat")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
            .shadow(radius: 10)
            Spacer()

            Image("BirdDrinks")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
                .shadow(color: .gray, radius: 20, x: 0, y: 2)

        }
    }
}

struct AddAShadowAnImage_Previews: PreviewProvider {
    static var previews: some View {
        AddAShadowAnImage()
    }
}
