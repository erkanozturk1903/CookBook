//
//  SecureFieldSwiftUI.swift
//  CookBook
//
//  Created by Erkan Ozturk on 11.11.2023.
//


/*
 SwiftUI'da formlar oluştururken kullanıcılardan şifre veya PIN gibi hassas bilgiler toplamanız gerekebilir. Bu girişi meraklı gözlerden gizleyen güvenli bir metin alanı oluşturmak için SecureField. görünümü kullanabilirsiniz
 */
import SwiftUI

struct SecureFieldSwiftUI: View {
    @State private var password = ""
    var body: some View {
        SecureField("Enter Your Password", text: $password)
            .textContentType(.password)
            .padding()
            .background(RoundedRectangle(cornerRadius: 5).stroke())
            .multilineTextAlignment(.center)
            .padding()
    }
}

struct SecureFieldSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        SecureFieldSwiftUI()
    }
}
