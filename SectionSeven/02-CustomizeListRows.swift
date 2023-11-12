//
//  CustomizeListRows.swift
//  CookBook
//
//  Created by Erkan Ozturk on 12.11.2023.
//

import SwiftUI

struct CustomizeListRows: View {
    let names = ["Alice", "Bob", "Charlie", "Dave"]

    var body: some View {
        List(names, id: \.self) { name in
            Text(name)
                .listRowBackground(//Color.green
                    LinearGradient(gradient: Gradient(colors: [.blue, .purple]),
                                   startPoint: .leading, endPoint: .trailing)
                )
        }
    }
}

struct CustomizeListRows_Previews: PreviewProvider {
    static var previews: some View {
        CustomizeListRows()
    }
}
