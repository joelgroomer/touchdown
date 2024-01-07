//
//  ProductModel.swift
//  Touchdown
//
//  Created by Joel Groomer on 1/6/24.
//

import Foundation

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
}
