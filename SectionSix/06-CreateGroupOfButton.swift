//
//  CreateGroupOfButton.swift
//  CookBook
//
//  Created by Erkan Ozturk on 12.11.2023.
//

import SwiftUI

struct CreateGroupOfButton: View {
    var body: some View {
        VStack {
            HStack {
                Button("Red", action: {})
                    .foregroundColor(.red)
                Button("Green", action: {})
                    .foregroundColor(.green)
                Button("Blue", action: {})
                    .foregroundColor(.blue)
            }

            Divider()
            VStack {
                Button("Red", action: {})
                    .foregroundColor(.red)
                Button("Green", action: {})
                    .foregroundColor(.green)
                Button("Blue", action: {})
                    .foregroundColor(.blue)
            }
        }
    }
}

struct CreateGroupOfButton_Previews: PreviewProvider {
    static var previews: some View {
        CreateGroupOfButton()
    }
}
