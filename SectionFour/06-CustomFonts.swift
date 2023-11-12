//
//  CustomFonts.swift
//  CookBook
//
//  Created by Erkan Ozturk on 11.11.2023.
//

import SwiftUI

struct CustomFonts: View {
    var body: some View {
        Text("Agbalumo-Regular")
            .font(.custom("Agbalumo-Regular", size: 24))
    }
}

struct CustomFonts_Previews: PreviewProvider {
    static var previews: some View {
        CustomFonts()
    }
}
