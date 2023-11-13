//
//  PresentModalViewfromTabView.swift
//  CookBook
//
//  Created by Erkan Ozturk on 13.11.2023.
//

import SwiftUI

struct PresentModalViewfromTabView: View {
    @State private var isPresented = false
    @State private var selectedTab: Int = 1


    var body: some View {
        TabView(selection: $selectedTab) {
            Text("First tab")
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("Tab 1")
                }
                .tag(1)

            Text("Second Tab")
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Tab 2")
                }
                .tag(2)
        }
        .onChange(of: selectedTab){ _ in
            isPresented = true
        }
        .sheet(isPresented: $isPresented) {
            ModalView(isPresented: self.$isPresented)
        }
    }
}

struct ModalView: View {
    @Binding var isPresented: Bool

    var body: some View {
        Text("This is a modal view.")
            .padding()
        Button("Dismiss") {
            isPresented = false
        }
    }
}

struct PresentModalViewfromTabView_Previews: PreviewProvider {
    static var previews: some View {
        PresentModalViewfromTabView()
    }
}
