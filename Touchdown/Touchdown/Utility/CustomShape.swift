//
//  CustomShape.swift
//  Touchdown
//
//  Created by Joel Groomer on 1/9/24.
//

import SwiftUI

struct CustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: [.topLeft, .topRight],
            cornerRadii: CGSize(width: 35, height: 35)
        )
        
        return Path(path.cgPath)
    }
}

#Preview(traits: .fixedLayout(width: 428, height: 120)) {
    CustomShape()
        .padding()
}
