//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Joel Groomer on 1/9/24.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - PROPERTIES
    
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            // MARK: NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .safeAreaPadding(.top)
            
            // MARK: HEADER
            HeaderDetailView()
                .padding(.horizontal)
            
            // MARK: DETAIL TOP PART
            // MARK: DETAIL BOTTOM PART
            // MARK: RATINGS + SIZES
            // MARK: DESCRIPTION
            // MARK: QUANTITY + FAVORITE
            // MARK: ADD TO CART
            Spacer()
        } //: VStack
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(red: sampleProduct.red,
                  green: sampleProduct.green,
                  blue: sampleProduct.blue
            )
            .ignoresSafeArea(.all, edges: .all)
        )
    }
}

// MARK: - PREVIEW
#Preview(traits: .fixedLayout(width: 375, height: 812)) {
    ProductDetailView()
}
