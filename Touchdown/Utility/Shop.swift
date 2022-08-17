//
//  Shop.swift
//  Touchdown
//
//  Created by Rajanish Karki on 8/16/22.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? 
}
