//
//  CreateNavigationTitle.swift
//  CookBook
//
//  Created by Erkan Ozturk on 12.11.2023.
//

import SwiftUI

struct CreateNavigationTitle: View {
    var body: some View {
        NavigationStack {
              List {
                NavigationLink("Item 1", value: "Item 1 Detail View")
                NavigationLink("Item 2", value: "Item 2 Detail View")
                NavigationLink("Item 3", value: "Item 3 Detail View")
              }
              .navigationTitle("List with Navigation")
              .navigationDestination(for: String.self) { detail in
                DetailViews(detail: detail)
              }
            }
    }
}

struct DetailViews: View {
  let detail: String
  var body: some View {
    Text(detail)
  }
}

struct CreateNavigationTitle_Previews: PreviewProvider {
    static var previews: some View {
        CreateNavigationTitle()
    }
}
