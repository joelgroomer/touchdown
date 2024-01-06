//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Joel Groomer on 1/5/24.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
