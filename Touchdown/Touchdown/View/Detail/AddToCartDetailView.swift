//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Joel Groomer on 1/9/24.
//

import SwiftUI

struct AddToCartDetailView: View {
    // MARK: - PROPERTIES
    
    
    // MARK: - BODY
    var body: some View {
        Button {} label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundStyle(.white)
            Spacer()
        } //: Button
        .padding(15)
        .background(
            Color(
                red: sampleProduct.red,
                green: sampleProduct.green,
                blue: sampleProduct.blue
            )
        )
        .clipShape(Capsule())
    }
}

// MARK: - PREVIEW
#Preview(traits: .sizeThatFitsLayout) {
    AddToCartDetailView()
        .padding()
}
