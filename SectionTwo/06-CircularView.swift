//
//  06-CircularView.swift
//  CookBook
//
//  Created by Erkan Ozturk on 9.11.2023.
//

import SwiftUI

struct CircularView: View {
    var body: some View {
        Text("Hello, \nCircular View")
            .multilineTextAlignment(.center)
            .padding(50)
            .foregroundColor(.white)
            .background(Circle().fill(.blue).frame(width: 200, height: 200))
    }
}

struct CircularView_Previews: PreviewProvider {
    static var previews: some View {
        CircularView()
    }
}
