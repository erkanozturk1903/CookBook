//
//  AddShadows.swift
//  CookBook
//
//  Created by Erkan Ozturk on 5.11.2023.
//

import SwiftUI

struct AddShadows: View {
    var body: some View {
        VStack {
            Text("Hello, Shadow!")
                .font(.largeTitle)
                .padding()
                .background(Color.white)
                .shadow(radius: 10)
                Circle()
                .fill(Color.blue)
                .shadow(color: .purple, radius: 10, x: 0, y: 0)
                .padding(EdgeInsets(top:10, leading: 10, bottom: 10, trailing: 10))
        }
    }
}

struct AddShadows_Previews: PreviewProvider {
    static var previews: some View {
        AddShadows()
    }
}
