//
//  ModifierCustomView.swift
//  CookBook
//
//  Created by Erkan Ozturk on 9.11.2023.
//

import SwiftUI

struct ModifierCustomView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .modifier(BoldAndItalicModifier())
    }
}

struct BoldAndItalicModifier : ViewModifier {
    func body(content: Content) -> some View {
        content.fontWeight(.bold)
            .italic()
    }
}

struct ModifierCustomView_Previews: PreviewProvider {
    static var previews: some View {
        ModifierCustomView()
    }
}
