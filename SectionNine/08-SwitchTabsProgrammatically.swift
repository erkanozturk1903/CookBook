//
//  SwitchTabsProgrammatically.swift
//  CookBook
//
//  Created by Erkan Ozturk on 13.11.2023.
//

import SwiftUI

struct SwitchTabsProgrammatically: View {
    @State private var selectedTab: Int = 0
    var body: some View {
        VStack {
            Button("Switch to second tab") {
                selectedTab = 1
            }
            .padding()

            TabView(selection: $selectedTab) {
                Text("First Tab")
                    .tabItem {
                        Image(systemName: "1.circle")
                        Text("Tab 1")
                    }
                    .tag(0)
                Text("Second Tab")
                    .tabItem {
                        Image(systemName: "2.circle")
                        Text("Tab 2")
                    }
                    .tag(1)
            }
        }
    }
}

struct SwitchTabsProgrammatically_Previews: PreviewProvider {
    static var previews: some View {
        SwitchTabsProgrammatically()
    }
}
