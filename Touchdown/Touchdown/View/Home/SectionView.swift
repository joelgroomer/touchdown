//
//  SectionView.swift
//  Touchdown
//
//  Created by Joel Groomer on 1/5/24.
//

import SwiftUI

struct SectionView: View {
    // MARK: - PROPERTIES
    @State var rotateColckwise: Bool
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .rotationEffect(Angle(degrees: rotateColckwise ? 90 : -90))
            
            Spacer()
        } //: VStack
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

#Preview {
    SectionView(rotateColckwise: false)
}
