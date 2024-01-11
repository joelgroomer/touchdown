//
//  QuantityFavoriteDetailView.swift
//  Touchdown
//
//  Created by Joel Groomer on 1/9/24.
//

import SwiftUI

struct QuantityFavoriteDetailView: View {
    // MARK: - PROPERTIES
    @State private var counter: Int = 0
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Button {
                feedback.impactOccurred()
                if counter > 0 {
                    counter -= 1
                }
            } label: {
                Image(systemName: "minus.circle")
            }
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button {
                feedback.impactOccurred()
                counter += 1
            } label: {
                Image(systemName: "plus.circle")
            }
            
            Spacer()
            
            Button {

            } label: {
                Image(systemName: "heart.circle")
                    .foregroundStyle(.pink)
            }
        } //: HStack
        .font(.system(.title, design: .rounded))
        .foregroundStyle(.black)
        .imageScale(.large)
    }
}

// MARK: - PREVIEW
#Preview(traits: .sizeThatFitsLayout) {
    QuantityFavoriteDetailView()
        .padding()
}
