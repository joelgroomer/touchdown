//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Joel Groomer on 1/9/24.
//

import SwiftUI

struct HeaderDetailView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        } //: VStack
        .foregroundStyle(.white)
    }
}

// MARK: - PREVIEW
#Preview(traits: .sizeThatFitsLayout) {
    HeaderDetailView()
        .environmentObject(Shop())
        .padding()
        .background(Color.gray)
}
