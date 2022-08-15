//
//  ProductGridView.swift
//  Touchdown
//
//  Created by Rajanish Karki on 8/14/22.
//

import SwiftUI

struct ProductGridView: View {
    var body: some View {
        LazyVGrid(columns: gridLayout, spacing: 15, pinnedViews: []) {
            ForEach(products){ product in
                ProductItemView(product: product)
            }//: Loop

        }//: Grid
        .padding()
    }
}

struct ProductGridView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            ProductGridView()
        }
    }
}
