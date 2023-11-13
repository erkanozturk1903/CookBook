//
//  CreateATabView.swift
//  CookBook
//
//  Created by Erkan Ozturk on 13.11.2023.
//

import SwiftUI

struct CreateATabView: View {
    var body: some View {
        TabView {
            Text("Tab 1's a star!")
                .tabItem {
                    Image(systemName: "star")
                    Text("Tab 1")
                }.tag(1)

            Text("Show the love for Tab 2!")
                .tabItem {
                    Image(systemName: "heart")
                        Text("Tab 2")

                }
                .tag(2)
        }
    }
}

struct CreateATabView_Previews: PreviewProvider {
    static var previews: some View {
        CreateATabView()
    }
}
