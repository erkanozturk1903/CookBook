//
//  CreateConsitentSwiftUIDesigns.swift
//  CookBook
//
//  Created by Erkan Ozturk on 12.11.2023.
//

import SwiftUI

struct CreateConsitentSwiftUIDesigns: View {
    @State private var isSelected = false
    @State private var changeColor = false

    var body: some View {
        VStack {
            Button(action: {
                isSelected.toggle()
            }) {
                Image("TransparentHedgy")
                    .renderingMode(.template)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .foregroundColor(isSelected ? .brown : .gray)
        }
            Image("TransparentHedgy")
                .renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .foregroundColor(changeColor ? .purple : .gray)
                .onAppear {
                    withAnimation (.easeInOut(duration: 2).repeatForever(autoreverses: true)) {
                        changeColor.toggle()
                    }
                }
        }
    }
}

struct CreateConsitentSwiftUIDesigns_Previews: PreviewProvider {
    static var previews: some View {
        CreateConsitentSwiftUIDesigns()
    }
}
