//
//  AddStepperSwiftUI.swift
//  CookBook
//
//  Created by Erkan Ozturk on 13.11.2023.
//

import SwiftUI

struct AddStepperSwiftUI: View {
    @State private var quantity : Int = 1
    var body: some View {
        VStack(spacing:10) {
            Text("How many packts of magic beans?")
            Stepper(value: $quantity, in: 1...10) {
                Text("\(quantity)")
            }
            .padding(.horizontal, 100)
        }
        .padding(30)
    }
}

struct AddStepperSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        AddStepperSwiftUI()
    }
}
