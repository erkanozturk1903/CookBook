//
//  StateAndBinding.swift
//  CookBook
//
//  Created by Erkan Ozturk on 9.11.2023.
//

import SwiftUI

struct StateView: View {

    @State private var isSwitchedOn = false

    var body: some View {
        VStack {
            Toggle(isOn: $isSwitchedOn) {
                Text("Turn me on or off")
            }
            if isSwitchedOn {
                Text("The switch is on!")
            }
        }
        .padding()
    }
}

struct StateAndBinding_Previews: PreviewProvider {
    static var previews: some View {
        StateView()
    }
}
