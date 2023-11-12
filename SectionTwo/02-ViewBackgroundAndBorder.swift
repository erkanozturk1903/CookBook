//
//  ViewBackgroundAndBorder.swift
//  CookBook
//
//  Created by Erkan Ozturk on 5.11.2023.
//

import SwiftUI

struct ViewBackgroundAndBorder: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .frame(width: 200, height: 50)
            .background(
                Image("background")
                    .resizable(resizingMode: .tile)
                    .opacity(0.25)
            )
            .fontWeight(.heavy)
            .border(Color.black, width: 2)
    }
}

struct ViewBackgroundAndBorder_Previews: PreviewProvider {
    static var previews: some View {
        ViewBackgroundAndBorder()
    }
}
