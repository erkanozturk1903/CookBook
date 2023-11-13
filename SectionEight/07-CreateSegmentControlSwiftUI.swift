//
//  CreateSegmentControlSwiftUI.swift
//  CookBook
//
//  Created by Erkan Ozturk on 13.11.2023.
//

import SwiftUI

struct CreateSegmentControlSwiftUI: View {
    @State private var selection = 0

    var body: some View {
        Picker(selection: $selection, label: Text("Picker")) {
            Text("Option 1").tag(0)
            Text("Option 2").tag(1)
            Text("Option 3").tag(2)
        }
        .pickerStyle(SegmentedPickerStyle())
        
    }
}

struct CreateSegmentControlSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        CreateSegmentControlSwiftUI()
    }
}
