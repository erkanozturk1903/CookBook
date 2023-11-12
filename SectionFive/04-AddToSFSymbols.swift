//
//  AddToSFSymbols.swift
//  CookBook
//
//  Created by Erkan Ozturk on 11.11.2023.
//

import SwiftUI

struct AddToSFSymbols: View {
    var body: some View {
        TabView {
            VStack(spacing: 16) {
                Image(systemName: "pawprint.circle.fill")
                    .font(.largeTitle)
                .foregroundColor(.blue)

                Image(systemName: "bell")
                    .symbolVariant(.slash)

                Image(systemName: "bell")
                    .symbolVariant(.square)

                Image(systemName: "bell")
                    .symbolVariant(.fill.slash)
            }
            .tabItem{
                Label("Home", systemImage: "person")
                    .symbolVariant(.none)
            }
            Text("Your Activity View Here")
                .tabItem {
                    Label("Activity", systemImage: "bell")
                        .symbolVariant(.none)
                }
        }
    }
}

struct AddToSFSymbols_Previews: PreviewProvider {
    static var previews: some View {
        AddToSFSymbols()
    }
}
