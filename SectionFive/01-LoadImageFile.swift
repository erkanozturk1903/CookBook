//
//  LoadImageFile.swift
//  CookBook
//
//  Created by Erkan Ozturk on 11.11.2023.
//

import SwiftUI

struct LoadImageFile: View {
    var body: some View {
       Image("HedgehogInClover")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding()
    }
}

struct LoadImageFile_Previews: PreviewProvider {
    static var previews: some View {
        LoadImageFile()
    }
}
