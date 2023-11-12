//
//  DynamicNavigsationTitle.swift
//  CookBook
//
//  Created by Erkan Ozturk on 12.11.2023.
//

import SwiftUI

struct DynamicNavigsationTitle: View {
    @State private var selectedItem = "Item 1"

    @State private var details = [
      "Item 1",
      "Item 2",
      "Item 3"
    ]

    var body: some View {
        NavigationStack {
            List {
                ForEach(details, id: \.self) {detail in
                    Button(detail) {
                        selectedItem = detail
                    }
                    .foregroundColor(.black)
                }
            }
            .navigationTitle(selectedItem)
        }
    }
}

struct DynamicNavigsationTitle_Previews: PreviewProvider {
    static var previews: some View {
        DynamicNavigsationTitle()
    }
}
