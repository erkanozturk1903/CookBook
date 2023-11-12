//
//  TextField.swift
//  CookBook
//
//  Created by Erkan Ozturk on 11.11.2023.
//

import SwiftUI

struct CreateTextField: View {
    @State private var name = ""

    var body: some View {
        TextField("Enter Your name", text: $name)
            .foregroundColor(.blue)
            .background(.yellow)
            .font(.largeTitle)
            .multilineTextAlignment(.center)
    }
}

struct TextField_Previews: PreviewProvider {
    static var previews: some View {
        CreateTextField()
    }
}
