//
//  AddAProgressView.swift
//  CookBook
//
//  Created by Erkan Ozturk on 13.11.2023.
//

import SwiftUI

struct AddAProgressView: View {

    @State var progressValue = 0.0
    var body: some View {
        VStack {
            ProgressView(value: progressValue)
                .padding()
            Button("Start Download") {
                for i in 1...100 {
                    DispatchQueue.main.asyncAfter(deadline: .now() + Double(i) / 10.0) {
                        progressValue = Double(i) / 100.0
                    }
                }
            }
        }
    }
}

struct AddAProgressView_Previews: PreviewProvider {
    static var previews: some View {
        AddAProgressView()
    }
}
