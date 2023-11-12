//
//  FormatText.swift
//  CookBook
//
//  Created by Erkan Ozturk on 10.11.2023.
//

import SwiftUI

struct FormatText: View {
    var body: some View {
        VStack {
            Text("Hello ")
                .fontWeight(.bold)
                .italic()
            + Text("World")
                .underline()

            Text("Hello, World!")
                .fontWeight(.semibold)
                .italic()
                .underline()
                .strikethrough(true, color: .red)
        }
    }
}

struct FormatText_Previews: PreviewProvider {
    static var previews: some View {
        FormatText()
    }
}
