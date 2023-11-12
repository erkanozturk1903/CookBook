//
//  AcrossViewsWithEnvironmentObjects.swift
//  CookBook
//
//  Created by Erkan Ozturk on 10.11.2023.
//

import SwiftUI

class GameSettings: ObservableObject {
    @Published var score = 0
}

struct AcrossViewsWithEnvironmentObjects: View {
    var body: some View {
        GameView()
            .environmentObject(GameSettings())
    }
}

struct GameView: View {
    @EnvironmentObject var settings: GameSettings
    var body: some View {
        VStack {
            Text("Score: \(settings.score)")
            Button("Increment Score") {
                settings.score += 1
            }
        }
    }
}

struct AcrossViewsWithEnvironmentObjects_Previews: PreviewProvider {
    static var previews: some View {
        AcrossViewsWithEnvironmentObjects()
    }
}
