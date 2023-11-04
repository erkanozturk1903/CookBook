//
//  ListViewCreated.swift
//  CookBook
//
//  Created by Erkan Ozturk on 4.11.2023.
//

import SwiftUI

struct ListViewCreated: View {
    let tasks = ["Task 1", "Task 2", "Task 3", "Task 4", "Task 5"]
    var body: some View {
        List(tasks, id: \.self) {task in
            Text(task)
        }
    }
}

struct ListViewCreated_Previews: PreviewProvider {
    static var previews: some View {
        ListViewCreated()
    }
}
