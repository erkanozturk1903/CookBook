//
//  ShowImageswithDifferentAspectRatios.swift
//  CookBook
//
//  Created by Erkan Ozturk on 11.11.2023.
//

import SwiftUI

struct ShowImageswithDifferentAspectRatios: View {
    var body: some View {
        Image("HelloHedgy")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
    }
}

struct ShowImageswithDifferentAspectRatios_Previews: PreviewProvider {
    static var previews: some View {
        ShowImageswithDifferentAspectRatios()
    }
}
