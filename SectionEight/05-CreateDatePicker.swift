//
//  CreateDatePicker.swift
//  CookBook
//
//  Created by Erkan Ozturk on 13.11.2023.
//

import SwiftUI

struct CreateDatePicker: View {

    @State private var selectedDate = Date()

    var body: some View {
        VStack{
            Text("Selected date is: \(selectedDate)")

            DatePicker("Select a date", selection: $selectedDate, displayedComponents: .date)
                .datePickerStyle(.graphical)
                .padding()
        }
        .padding()
    }
}

struct CreateDatePicker_Previews: PreviewProvider {
    static var previews: some View {
        CreateDatePicker()
    }
}
