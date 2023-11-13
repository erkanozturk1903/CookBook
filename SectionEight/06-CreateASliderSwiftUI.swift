//
//  CreateASliderSwiftUI.swift
//  CookBook
//
//  Created by Erkan Ozturk on 13.11.2023.
//

import SwiftUI

struct CreateASliderSwiftUI: View {
    @State private var value : Double = 0.5
    var body: some View {
        VStack {
            Slider(value: $value, in: 0...1)
            Text("Value: \(value, specifier: "%.2f")")
        }
    }
}

struct CreateASliderSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        CreateASliderSwiftUI()
    }
}
