//
//  ProfilePicture.swift
//  CookBook
//
//  Created by Erkan Ozturk on 4.11.2023.
//

import SwiftUI

struct ProfilePicture: View {
    var body: some View {
        Image("Profile")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct ProfilePicture_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePicture()
    }
}
