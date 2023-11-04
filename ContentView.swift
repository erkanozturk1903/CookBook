//
//  ContentView.swift
//  CookBook
//
//  Created by Erkan Ozturk on 4.11.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Welcome to my app!")
                NavigationLink(destination: DetailView()) {
                    Text("Go to Detail View")
                }
                /*
                ProfilePicture()
                Spacer()
                ButtonCreated()
                Spacer()
                ImageFile()
                Text("Welcome to my app!")
                    .navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.large)
                 */
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        print("Settings tapped")
                    }) {
                        Text("Settings")
                    }
                }
            }

        }

    }
}

struct DetailView: View {
    var body: some View {
        Text("This is the detail view!")
            .navigationTitle("Detail")
            .navigationBarTitleDisplayMode(.large)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone 14 Pro")
        ContentView().preferredColorScheme(.dark)
        ContentView().previewInterfaceOrientation(.landscapeLeft)
    }
}
