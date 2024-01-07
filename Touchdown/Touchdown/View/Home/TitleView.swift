//
//  TitleView.swift
//  Touchdown
//
//  Created by Joel Groomer on 1/6/24.
//

import SwiftUI

struct TitleView: View {
    // MARK: - PROPERTIES
    var title: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Text("Helmet")
                .font(.largeTitle)
            .fontWeight(.heavy)
            
            Spacer()
        } //: HStack
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    TitleView(title: "Helmet")
        .background(colorBackground)
}
