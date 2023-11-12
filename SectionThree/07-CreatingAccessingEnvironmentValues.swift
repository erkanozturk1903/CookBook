//
//  CreatingAccessingEnvironmentValues.swift
//  CookBook
//
//  Created by Erkan Ozturk on 10.11.2023.
//

import SwiftUI

//Defining a custom environment value
struct ThemeKey: EnvironmentKey {
    static let defaultValue: Theme = .light
}

extension EnvironmentValues {
    var theme: Theme {
        get { self[ThemeKey.self] }
        set { self[ThemeKey.self] = newValue }
    }
}

//Enum for the diffrent themes
enum Theme {
    case light, dark
}

extension View {
    func theme(_ theme: Theme) -> some View {
        environment(\.theme, theme)
    }
}

struct ThemedView: View {
    @Environment(\.theme) var theme: Theme

    var body: some View {
        VStack {
            if theme == .light {
                Text("Light Theme")
                    .foregroundColor(.black)
                    .background(.white)
            } else {
                Text("Dark Theme")
                    .foregroundColor(.white)
                    .background(.black)
            }
        }
        .padding()
    }
}

struct CreatingAccessingEnvironmentValues: View {
    @State var theme: Theme = .light
    var body: some View {
        VStack {
            Button("Switch Theme") {
                //Setting our environment value
                switch theme {
                case .dark:
                    theme = .light
                case .light:
                    theme = .dark
                }
            }
            ThemedView()
        }
        .theme(theme)
    }
}

struct CreatingAccessingEnvironmentValues_Previews: PreviewProvider {
    static var previews: some View {
        CreatingAccessingEnvironmentValues()
    }
}
