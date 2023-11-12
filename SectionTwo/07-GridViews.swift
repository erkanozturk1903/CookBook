//
//  GridViews.swift
//  CookBook
//
//  Created by Erkan Ozturk on 9.11.2023.
//

import SwiftUI

struct GridViews: View {
    let items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"]

    let colums = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        LazyVGrid(columns: colums, spacing: 16) {
            ForEach(items, id: \.self) {item in
                Text(item)
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .background(.blue)
                    .foregroundColor(.white)
            }
        }
        .padding()
    }
}

struct GridViews_Previews: PreviewProvider {
    static var previews: some View {
        GridViews()
    }
}
