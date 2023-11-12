//
//  Opacity_adjustView.swift
//  CookBook
//
//  Created by Erkan Ozturk on 9.11.2023.
//

import SwiftUI

struct Opacity_adjustView: View {
    var body: some View {
        VStack {
            Text("This text has full opacity.")
            Text("This text is partially transparent.")
                .opacity(0.5)
        }
    }
}

struct Opacity_adjustView_Previews: PreviewProvider {
    static var previews: some View {
        Opacity_adjustView()
    }
}
