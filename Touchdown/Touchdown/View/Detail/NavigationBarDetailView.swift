//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Joel Groomer on 1/9/24.
//

import SwiftUI

struct NavigationBarDetailView: View {
    // MARK: - PROPERTIES
    
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Button {
                //
            } label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundStyle(.white)
            }
            
            Spacer()
            
            Button {
                //
            } label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundStyle(.white)
            }
        } //: HStack
    }
}

// MARK: - PREVIEW
#Preview(traits: .sizeThatFitsLayout) {
    NavigationBarDetailView()
        .padding()
        .background(Color.gray)
}
