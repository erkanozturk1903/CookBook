//
//  BlendTwoImagesTogether.swift
//  CookBook
//
//  Created by Erkan Ozturk on 11.11.2023.
//

import SwiftUI

struct BlendTwoImagesTogether: View {
    var body: some View {
        ZStack {
              Image("SunriseTent")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)

              Image("WavyPattern")
                .resizable()
                .scaledToFill()
                .blendMode(.multiply)
                .opacity(0.7)
            }
    }
}

struct BlendTwoImagesTogether_Previews: PreviewProvider {
    static var previews: some View {
        BlendTwoImagesTogether()
    }
}
