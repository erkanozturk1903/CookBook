//
//  UseAnimatedImages.swift
//  CookBook
//
//  Created by Erkan Ozturk on 12.11.2023.
//

import SwiftUI

struct UseAnimatedImages: View {
    @State private var isAnimating = false
    var body: some View {
       Image("HelloHedgy")
            .resizable()
            .scaledToFit()
            .scaleEffect(isAnimating ? 1.5 : 1.0)
            .onAppear() {
                withAnimation(
                    .easeInOut(duration: 1.0).repeatForever(autoreverses: true)
                ) {
                    isAnimating = true
                }
            }
    }
}

struct UseAnimatedImages_Previews: PreviewProvider {
    static var previews: some View {
        UseAnimatedImages()
    }
}
