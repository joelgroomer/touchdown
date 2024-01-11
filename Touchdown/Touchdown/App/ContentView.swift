//
//  ContentView.swift
//  Touchdown
//
//  Created by Joel Groomer on 1/1/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                        NavigationBarView()
                            .padding(.horizontal, 15)
                            .padding(.bottom)
                            .safeAreaPadding(.top)
                            .background(Color.white)
                            .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                        
                        ScrollView(.vertical, showsIndicators: false) {
                            VStack(spacing: 0) {
                                FeaturedTabView()
                                    .padding(.vertical)
                                    .frame(minHeight: 256)
                                
                                CategoryGridView()
                                
                                TitleView(title: "Helmets")
                                
                                LazyVGrid(columns: gridLayout, spacing: 15) {
                                    ForEach(products) { product in
                                        ProductItemView(product: product)
                                            .onTapGesture {
                                                withAnimation(.easeOut) {
                                                    shop.selectedProduct = product
                                                    shop.showingProduct = true
                                                }
                                            }
                                    }
                                } //: LazyVGrid
                                .padding(15)
                                
                                TitleView(title: "Brands")
                                
                                BrandGridView()
                                
                                FooterView()
                                    .padding(.horizontal)
                            } //: VStack
                        } //: ScrollView
                        
                    } //: VStack
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        }
    }
}

// MARK: - PREVIEW
#Preview {
    ContentView()
        .environmentObject(Shop())
}
