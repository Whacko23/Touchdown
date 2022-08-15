//
//  ProductModel.swift
//  Touchdown
//
//  Created by Rajanish Karki on 8/14/22.
//

import SwiftUI

struct Product: Codable, Identifiable{
    
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
    
//    var red: Double { return color[0]}
//    var green: Double { return color[1]}
//    var blue: Double { return color[2]}
    
    var colorObject: Color {
        return Color(red: color[0], green: color[1], blue: color[2])
        
    }
    
    var formattedPrice: String {return "S \(price)"}
}

extension Product {
    static let exampleProduct: Product = products[0]
}

