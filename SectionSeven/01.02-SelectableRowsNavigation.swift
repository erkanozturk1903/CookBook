//
//  SelectableRowsNavigationLink.swift
//  CookBook
//
//  Created by Erkan Ozturk on 12.11.2023.
//

import SwiftUI

struct SelectableRowsNavigation: View {
    let scientists = ["Albert Einstein", "Isaac Newton", "Marie Curie", "Charles Darwin", "Nikola Tesla"]

    var body: some View {
        NavigationStack {
            List(scientists, id: \.self) { scientist in
                NavigationLink(scientist, value: scientist)
            }
            .navigationDestination(for: String.self) { scientistName in
                ScientistDetailView(name: scientistName)
            }
        }
    }
}

struct ScientistDetailView: View {
    let name : String

    var body: some View {
        VStack {
            Text(name)
                .font(.title)
                .padding()
            Text("More details about \(name) would be presented here.")
                .font(.body)
                .foregroundColor(.gray)
        }
        .navigationTitle(name)
    }
}

struct SelectableRowsNavigationLink_Previews: PreviewProvider {
    static var previews: some View {
        SelectableRowsNavigation()
    }
}
