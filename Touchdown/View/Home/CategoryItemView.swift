//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Rajanish Karki on 8/13/22.
//

import SwiftUI

struct CategoryItemView: View {
    
    // MARK: - Properties
    let category: Category
    
    // MARK: - Body
    var body: some View {
        Button(action: {}) {
            HStack(alignment:.center, spacing: 6){
                Spacer()
                
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40, alignment: .center)
                    .foregroundColor(.gray)
                
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
               Spacer()
                
            }//: HStack
            .frame(width: 200)
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 1)
            )
            .padding(.trailing, 5)
        }//: Button

    }
}

// MARK: - Preview
struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)

    }
}
