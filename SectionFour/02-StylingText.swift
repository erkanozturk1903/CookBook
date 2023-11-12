//
//  StylingText.swift
//  CookBook
//
//  Created by Erkan Ozturk on 10.11.2023.
//

import SwiftUI

struct StylingText: View {
    var body: some View {
        Text("Hello, 1982 world")
            .font(.custom("Papyrus", size: 24))
            .foregroundColor(.purple)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
    }
}

struct StylingText_Previews: PreviewProvider {
    static var previews: some View {
        StylingText()
    }
}
