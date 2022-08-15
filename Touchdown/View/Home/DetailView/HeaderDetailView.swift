//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Rajanish Karki on 8/15/22.
//

import SwiftUI

struct HeaderDetailView: View {
    
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
            
            Text(Product.exampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        }
        .foregroundColor(.white)
    }
}

// MARK: - Preview
struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(.gray)

    }
}
