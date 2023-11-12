//
//  CropanImage.swift
//  CookBook
//
//  Created by Erkan Ozturk on 11.11.2023.
//

import SwiftUI

struct CropanImage: View {
    var body: some View {
        VStack {
            Text("Cropping With Clipped")
                .font(.title)
            Image("WinterPup")
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                .clipped()
                .border(.black, width: 2)
        }
    }
}

struct CropanImage_Previews: PreviewProvider {
    static var previews: some View {
        CropanImage()
    }
}
