//
//  CreateASplitAView.swift
//  CookBook
//
//  Created by Erkan Ozturk on 13.11.2023.
//

import SwiftUI

struct CreateASplitAView: View {
    let animals = [
        Animal(name: "Coyote", description: "The coyote is a species of canine native to North America..."),
        Animal(name: "Gila Monster", description: "The Gila Monster is a species of venomous lizard native to the southwestern United States..."),
        Animal(name: "Roadrunner", description: "The roadrunner is a fast-running bird found in the southwestern United States and Mexico...")
      ]

    @State private var selectedAnimal: (Animal)? = nil

    var body: some View {
        NavigationSplitView {
            List (animals, id: \.name, selection: $selectedAnimal) {
                animal in
                NavigationLink(animal.name, value: animal)
            }
            .navigationTitle("Arizona Animals")
        } detail: {
            DetailViewAnimal(animal: selectedAnimal ?? animals[0])
        }
    }
}

struct Animal : Hashable {
    let name: String
    let description: String
}

struct DetailViewAnimal: View {
    let animal: Animal

    var body: some View {
        VStack {
            Text(animal.name)
                .font(.largeTitle)
            Text(animal.description)
                .font(.body)
        }
        .padding()
        .navigationTitle("Animal Details")
    }
}

struct CreateASplitAView_Previews: PreviewProvider {
    static var previews: some View {
        CreateASplitAView()
    }
}
