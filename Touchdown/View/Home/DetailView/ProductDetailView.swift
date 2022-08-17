//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Rajanish Karki on 8/15/22.
//

import SwiftUI

struct ProductDetailView: View {
    
    // MARK: - Properties
    @EnvironmentObject var shop: Shop
    
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
                .zIndex(1)
            
            //Detail bottom part
            VStack(alignment: .center, spacing: 0) {
                //Ratings
                RatingSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 20)
                
                //Description
                ScrollView(.vertical, showsIndicators: false){
                    Text(shop.selectedProduct?.description ??  Product.exampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }
                
                //Quantity + Favourite
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                
                //Add to Cart
                AddToCartDetailView()
                    .padding(.bottom, 20)
                
                Spacer()
            }//: VStack
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
            
        }//: Vstack
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            shop.selectedProduct?.colorObject ??  Product.exampleProduct.colorObject
        ).ignoresSafeArea(.all, edges: .all)
        
    }
}

// MARK: - Preview
struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))

    }
}
