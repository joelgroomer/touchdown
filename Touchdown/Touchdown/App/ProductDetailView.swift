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
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            // MARK: DETAIL BOTTOM PART
            VStack(alignment: .center, spacing: 0) {
                // RATINGS + SIZES
                RatingsSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
                // DESCRIPTION
                ScrollView(.vertical, showsIndicators: false) {
                    Text(sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundStyle(.gray)
                        .multilineTextAlignment(.leading)
                } //: ScrollView
                
                // QUANTITY + FAVORITE
                QuantityFavoriteDetailView()
                    .padding(.bottom, 10)
                
                // ADD TO CART
                AddToCartDetailView()
                    .safeAreaPadding(.bottom)
                
            } //: VStack
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
            
        } //: VStack
        .zIndex(0)
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
