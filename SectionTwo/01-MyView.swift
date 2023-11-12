//
//  MyView.swift
//  CookBook
//
//  Created by Erkan Ozturk on 5.11.2023.
//

import SwiftUI

struct MyView: View {
    var body: some View {
        Text("Welcome to my amazing app!")
            .font(.title)
            .foregroundColor(.blue)
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView()
    }
}
