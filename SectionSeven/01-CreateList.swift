//
//  CreateList.swift
//  CookBook
//
//  Created by Erkan Ozturk on 12.11.2023.
//

import SwiftUI

struct CreateList: View {
    let scientists = ["Albert Einstein", "Isaac Newton", "Marie Curie", "Charles Darwin", "Nikola Tesla"]

    var body: some View {
        List(scientists, id: \.self){ scientist in
            Text(scientist)
        }
        /*
         List {
             Text("Item 1")
             Text("Item 2")
             Text("Item 3")
         }
         */

    }
}

struct CreateList_Previews: PreviewProvider {
    static var previews: some View {
        CreateList()
    }
}
