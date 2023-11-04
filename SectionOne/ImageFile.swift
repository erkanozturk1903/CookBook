//
//  ImageFile.swift
//  CookBook
//
//  Created by Erkan Ozturk on 4.11.2023.
//

import SwiftUI

struct ImageFile: View {
    var body: some View {
        VStack {
            Image("Kodeco")
             Text("Welcome to the Kodeco SwiftUI cookbok!")
                 .font(.headline)
        }
    }
}

struct ImageFile_Previews: PreviewProvider {
    static var previews: some View {
        ImageFile()
    }
}
