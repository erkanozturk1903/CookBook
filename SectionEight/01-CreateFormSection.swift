//
//  CreateFormSection.swift
//  CookBook
//
//  Created by Erkan Ozturk on 13.11.2023.
//

import SwiftUI

struct CreateFormSection: View {
    @State private var name = ""
    @State private var email = ""
    @State private var age = ""

    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Personel Information")) {
                    TextField("Name", text: $name)
                    TextField("Email", text: $email)
                }

                Section(header: Text("Additional Information")) {
                    TextField("Age", text: $age)
                }
            }
            .navigationTitle("Registration Form")
        }
    }
}

struct CreateFormSection_Previews: PreviewProvider {
    static var previews: some View {
        CreateFormSection()
    }
}
