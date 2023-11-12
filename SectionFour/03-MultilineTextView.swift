//
//  MultilineTextView.swift
//  CookBook
//
//  Created by Erkan Ozturk on 10.11.2023.
//

import SwiftUI

struct MultilineTextView: View {

    var body: some View {
        let name = "Sarah"
        let message = "Hello, \(name)!\nThanks for using our app. \n\nWe hope you have a great experience."
        VStack {
            Text("Hello!\nWelcome to our app. We're so glad you're here. \n\nYou will love everything we have to offer.")
            Spacer()
            Text(message)
            Spacer()
            Text("Why do programmers always mix up Halloween and Christmas?\nBecause Oct 31 == Dec 25!")
                .lineLimit(1)
                .multilineTextAlignment(.center)
                .padding()


            Spacer()

        }
    }
}

struct MultilineTextView_Previews: PreviewProvider {
    static var previews: some View {
        MultilineTextView()
    }
}
