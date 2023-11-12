//
//  CreateTabViewList.swift
//  CookBook
//
//  Created by Erkan Ozturk on 12.11.2023.
//

import SwiftUI

struct CreateTabViewList: View {
    var animals = ["Lion", "Tiger", "Elephant", "Leopard"]
    var plants = ["Rose", "Lily", "Tulip", "Orchid"]


    var body: some View {
        TabView {
            List(animals, id: \.self) {animal in
                Text(animal)
            }
            .tabItem {
                Image(systemName: "hare")
                Text("Animals")
            }

            List(plants, id: \.self) {plant in
                Text(plant)
            }
            .tabItem {
                Image(systemName: "leaf")
                Text("Plants")
            }
        }
    }
}

struct CreateTabViewList_Previews: PreviewProvider {
    static var previews: some View {
        CreateTabViewList()
    }
}
