//
//  CreateSearchBarList.swift
//  CookBook
//
//  Created by Erkan Ozturk on 12.11.2023.
//

import SwiftUI

struct ParkSearch: Identifiable {
  let id = UUID()
  let name: String
}


struct CreateSearchBarList: View {

    @State private var searchText = ""

      let parks: [ParkSearch] = [
        ParkSearch(name: "Yosemite National Park"),
        ParkSearch(name: "Redwood National and State Parks"),
        ParkSearch(name: "Sequoia National Park"),
        ParkSearch(name: "Pinnacles National Park"),
        ParkSearch(name: "Joshua Tree National Park"),
        ParkSearch(name: "Death Valley National Park"),
        ParkSearch(name: "Channel Islands National Park"),
        ParkSearch(name: "Kings Canyon National Park"),
        ParkSearch(name: "Lassen Volcanic National Park"),
        ParkSearch(name: "Point Reyes National Seashore")
      ]

    var body: some View {
        NavigationStack {
            List {
                ForEach(parks.filter {searchText.isEmpty || $0.name.localizedCaseInsensitiveContains(searchText)}) {park in
                    Text(park.name)
                }
            }
            .navigationTitle("California Parks")
            .searchable(text: $searchText)
        }
    }
}

struct CreateSearchBarList_Previews: PreviewProvider {
    static var previews: some View {
        CreateSearchBarList()
    }
}
