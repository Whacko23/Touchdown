//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Rajanish Karki on 8/14/22.
//

import SwiftUI

struct ProductItemView: View {
    
    // MARK: - Properties
    let product: Product
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            //Photo
            ZStack{
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }//: ZStack
            .background(product.colorObject)
            .cornerRadius(12)
            
            //Name
            Text(product.name)
                .font(.system(size: 24))
                .fontWeight(.black)
                .lineLimit(1)
            
            //Price
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            
        }//: VSTACK
        .padding(.horizontal, 2)

    }
}

// MARK: - Preview
struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)

    }
}
