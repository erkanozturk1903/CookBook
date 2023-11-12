//
//  AddButtonNavigationBar.swift
//  CookBook
//
//  Created by Erkan Ozturk on 12.11.2023.
//

import SwiftUI

struct AddButtonNavigationBar: View {
    var body: some View {
        NavigationStack {
            Text("Hello, World")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            //code for button action goes here
                        }) {
                            Image(systemName: "gear")
                        }
                    }
                }
        }
    }
}

struct AddButtonNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        AddButtonNavigationBar()
    }
}
