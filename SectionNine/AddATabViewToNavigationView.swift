//
//  AddATabViewToNavigationView.swift
//  CookBook
//
//  Created by Erkan Ozturk on 13.11.2023.
//

import SwiftUI

struct AddATabViewToNavigationView: View {
    var body: some View {
        NavigationStack {
            TabView {
                Text("First Tab")
                    .tabItem {
                        Image(systemName: "house")
                        Text("home")
                    }

                Text("Second Tab")
                    .tabItem {
                        Image(systemName: "person")
                        Text("Profile")
                    }
            }
            .navigationTitle("My App")
        }
    }
}

struct AddATabViewToNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        AddATabViewToNavigationView()
    }
}
