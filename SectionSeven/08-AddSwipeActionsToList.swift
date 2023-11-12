//
//  AddSwipeActionsToList.swift
//  CookBook
//
//  Created by Erkan Ozturk on 12.11.2023.
//

import SwiftUI

struct AddSwipeActionsToList: View {
    @State var messages : [Message] = [
        Message(content: "Hello!", isRead: false),
        Message(content: "How are you", isRead: true),
        Message(content: "Happy coding", isRead: false)

    ]
    var body: some View {
        List {
            ForEach(messages.indices, id: \.self) {index in
                Text(messages[index].content)
                    .swipeActions {
                        Button {
                            messages[index].isRead.toggle()
                        } label: {
                            Label("Toogle Read", systemImage: "envelope.open.fill")
                        }

                        Button(role: .destructive) {
                            messages.remove(at: index)
                        } label: {
                            Label("Delete", systemImage: "trash")
                        }
                    }
            }
        }
    }
}
struct Message {
    var content : String
    var isRead : Bool
}

struct AddSwipeActionsToList_Previews: PreviewProvider {
    static var previews: some View {
        AddSwipeActionsToList()
    }
}
