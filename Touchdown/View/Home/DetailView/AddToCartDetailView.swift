//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Rajanish Karki on 8/15/22.
//

import SwiftUI

struct AddToCartDetailView: View {
    
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        Button(action: {}) {
            Spacer()
            
            Text("Add to Cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Spacer()
        }//: Button
        .padding(15)
        .background(
            Product.exampleProduct.colorObject
        )
        .clipShape(Capsule())
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()

    }
}
