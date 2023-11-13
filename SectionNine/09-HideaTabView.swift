//
//  HideaTabView.swift
//  CookBook
//
//  Created by Erkan Ozturk on 13.11.2023.
//

import SwiftUI

struct HideaTabView: View {
    @State private var isTabViewHidden = false

    var body: some View {
        VStack {
              Button(action: {
                isTabViewHidden.toggle()
              }) {
                Text(isTabViewHidden ? "Show Tab View" : "Hide Tab View")
              }
              .padding()

              if !isTabViewHidden {
                TabView {
                  Text("First View")
                    .tabItem {
                      Image(systemName: "1.circle")
                      Text("First")
                    }

                  Text("Second View")
                    .tabItem {
                      Image(systemName: "2.circle")
                      Text("Second")
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
              }
            }
    }
}

struct HideaTabView_Previews: PreviewProvider {
    static var previews: some View {
        HideaTabView()
    }
}
