//
//  AddCustomShapeView.swift
//  CookBook
//
//  Created by Erkan Ozturk on 9.11.2023.
//

import SwiftUI

struct AddCustomShapeView: View {
    var body: some View {
        DiamondShape()
            .fill(Color.red)
            .frame(width: 200, height: 200)
    }
}

struct DiamondShape: Shape {
  func path(in rect: CGRect) -> Path {
    var path = Path()
    let center = CGPoint(x: rect.width / 2, y: rect.height / 2)

    path.move(to: CGPoint(x: center.x, y: 0))
    path.addLine(to: CGPoint(x: rect.width, y: center.y))
    path.addLine(to: CGPoint(x: center.x, y: rect.height))
    path.addLine(to: CGPoint(x: 0, y: center.y))
    path.addLine(to: CGPoint(x: center.x, y: 0))

    return path
  }
}


struct AddCustomShapeView_Previews: PreviewProvider {
    static var previews: some View {
        AddCustomShapeView()
    }
}
