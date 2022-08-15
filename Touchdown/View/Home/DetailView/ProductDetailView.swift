//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Rajanish Karki on 8/15/22.
//

import SwiftUI

struct ProductDetailView: View {
    
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            //Navbar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication
                    .shared
                    .connectedScenes
                    .flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
                    .first { $0.isKeyWindow }?.safeAreaInsets.top)
            
            //Header
            HeaderDetailView()
                .padding(.horizontal)
            //Detail top part
            TopPartDetailView()
                .padding(.horizontal)
            //Detail bottom part
            //Ratings
            //Details
            //Quantity + Favourite
            //Add to Cart
            Spacer()
        }//: Vstack
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Product.exampleProduct.colorObject
        ).ignoresSafeArea(.all, edges: .all)
        
    }
}

// MARK: - Preview
struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))

    }
}
