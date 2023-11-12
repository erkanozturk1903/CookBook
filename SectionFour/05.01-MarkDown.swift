//
//  MarkDown.swift
//  CookBook
//
//  Created by Erkan Ozturk on 10.11.2023.
//

import SwiftUI



struct MarkDown: View {
    
    var body: some View {
        let quote = """
        **"Be yourself;** everyone else is _already taken._"
        - **Oscar Wilde**
        """
        let attributedQuote = try! AttributedString(markdown: quote)

        VStack {
            Text("**Bold** and _italic_ text!")
            Text(attributedQuote)
                .font(.system(size: 16, weight: .medium, design: .serif))
                .foregroundColor(.blue)
        }
    }
}

struct MarkDown_Previews: PreviewProvider {
    static var previews: some View {
        MarkDown()
    }
}
