//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by Rajanish Karki on 8/15/22.
//

import SwiftUI

struct TopPartDetailView: View {
    
    // MARK: - Properties
    @State private var isAnimating: Bool = false
    @EnvironmentObject var shop: Shop
    
    // MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            //Price
            VStack (alignment: .leading, spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ?? Product.exampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            }//: VStack
            .offset(y: isAnimating ? -50 : -75)

            //Photo
            Image(shop.selectedProduct?.image ?? Product.exampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
        }//: HStack
        .onAppear {
            withAnimation(.easeOut(duration: 0.75), {
                isAnimating.toggle()
            })
        }

    }
}

// MARK: - Preview
struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()

    }
}
