//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Rajanish Karki on 8/15/22.
//

import SwiftUI

struct NavigationBarDetailView: View {
    
    // MARK: - Properties
    @EnvironmentObject var shop: Shop
    
    // MARK: - Body
    var body: some View {
        HStack {
            Button(action: {
                withAnimation(.easeIn){
                    feedback.impactOccurred()
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            }) {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }//: Button
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }//: Button
            
        }//: HSTack
        
    }
}

// MARK: - Preview
struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
