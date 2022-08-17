//
//  ProductGridView.swift
//  Touchdown
//
//  Created by Rajanish Karki on 8/14/22.
//

import SwiftUI

struct ProductGridView: View {
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        LazyVGrid(columns: gridLayout, spacing: 15, pinnedViews: []) {
            ForEach(products){ product in
                ProductItemView(product: product)
                    .onTapGesture{
                        feedback.impactOccurred()
                        
                        withAnimation(.easeOut){
                            shop.selectedProduct = product
                            shop.showingProduct = true
                        }
                    }
            }//: Loop

        }//: Grid
        .padding()
    }
}

struct ProductGridView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            ProductGridView()
                .environmentObject(Shop())
        }
    }
}
