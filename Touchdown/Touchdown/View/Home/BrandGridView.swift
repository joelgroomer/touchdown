//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Joel Groomer on 1/7/24.
//

import SwiftUI

struct BrandGridView: View {
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing) {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                }
            } //: LazyHGrid
            .frame(height: 200)
            .padding(15)
        } //: ScrollView
    }
}

// MARK: - PREVIEW
#Preview {
    BrandGridView()
        .background(colorBackground)
}
