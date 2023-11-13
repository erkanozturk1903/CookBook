//
//  AddCustomIconsTabViewItems.swift
//  CookBook
//
//  Created by Erkan Ozturk on 13.11.2023.
//

import SwiftUI

struct AddCustomIconsTabViewItems: View {
    var body: some View {
        TabView {
            Text("Here come the sun")
                .tabItem {
                    Image("HappySun")
                    Text("Sun")
                }
            Text("I see a good moon rising")
                .tabItem {
                    Image("HappyMoon")
                    Text("Moon")
                }
        }
    }
}

struct AddCustomIconsTabViewItems_Previews: PreviewProvider {
    static var previews: some View {
        AddCustomIconsTabViewItems()
    }
}
