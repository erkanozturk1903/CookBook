//
//  FormCreated.swift
//  CookBook
//
//  Created by Erkan Ozturk on 4.11.2023.
//

import SwiftUI

struct FormCreated: View {
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Information")) {
                    TextField("Username", text: $username)
                    TextField("Email", text: $email)
                }

                Section(header: Text("Login Credentials")) {
                    SecureField("Password", text: $password)
                }

                Section{
                    Button(action: register) {
                        Text("Register")
                    }
                }
            }
            .navigationTitle("Registration Form")
        }
    }

    func register() {
        //Implement registration functionality here
    }
}

struct FormCreated_Previews: PreviewProvider {
    static var previews: some View {
        FormCreated()
    }
}
