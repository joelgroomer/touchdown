//
//  Shop.swift
//  Touchdown
//
//  Created by Joel Groomer on 1/10/24.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
