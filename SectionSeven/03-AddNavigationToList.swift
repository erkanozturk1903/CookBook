//
//  AddNavigationToList.swift
//  CookBook
//
//  Created by Erkan Ozturk on 12.11.2023.
//

import SwiftUI

struct AddNavigationToList: View {
    @State private var presentedParks: [Park] = []

    var parks: [Park] {
        [
          Park(name: "Yosemite", imageName: "yosemite", description: "Yosemite National Park"),
          Park(name: "Sequoia", imageName: "sequoia", description: "Sequoia National Park"),
          Park(name: "Point Reyes", imageName: "point_reyes", description: "Point Reyes National Seashore")
        ]
      }


    var body: some View {
        NavigationStack(path: $presentedParks) {
            List(parks) {park in
                NavigationLink(park.name, value: park)
            }
            .navigationDestination(for: Park.self) {park in
                ParkDetailView(park: park)
            }
        }
    }
}

struct Park: Hashable {
    let name: String
    let imageName: String
    let description: String
}

extension Park: Identifiable {
    var id: String {name}
}

struct ParkDetailView: View {
    let park: Park

    var body: some View {
        VStack {
            Image(park.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
            Text(park.name)
                .font(.title)
                .foregroundColor(.primary)
            Text(park.description)
                .font(.body)
                .foregroundColor(.secondary)
        }
        .padding()
    }
}

struct AddNavigationToList_Previews: PreviewProvider {
    static var previews: some View {
        AddNavigationToList()
    }
}
