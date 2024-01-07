//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Joel Groomer on 1/6/24.
//

import SwiftUI

struct ProductItemView: View {
    // MARK: - PROPERTIES
    var product: Product
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            } //: ZStack
            .background(Color(
                red: product.color[0],
                green: product.color[1],
                blue: product.color[2])
            )
            .clipShape(.rect(cornerRadius: 12))
            
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            Text("$\(product.price)")
                .fontWeight(.semibold)
                .foregroundStyle(.gray)
            
        } //: VStack
    }
}

// MARK: - PREVIEW
#Preview(traits: .fixedLayout(width: 200, height: 300)) {
    ProductItemView(product: products[0])
        .padding()
        .background(colorBackground)
}
