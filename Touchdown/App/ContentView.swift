//
//  ContentView.swift
//  Touchdown
//
//  Created by Rajanish Karki on 8/11/22.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties
    @EnvironmentObject var shop: Shop
    
    // MARK: - Body
    var body: some View {
        GeometryReader { geo in
            ZStack {
                if shop.showingProduct == false && shop.selectedProduct == nil {
                    VStack(spacing:0) {
                        NavigationBarView()
                            .padding(.horizontal, 15)
                            .padding(.bottom)
                            .padding(.top, UIApplication
                                .shared
                                .connectedScenes
                                .flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
                                .first { $0.isKeyWindow }?.safeAreaInsets.top)
                            .background(Color.white)
                            .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                        
                        ScrollView(.vertical, showsIndicators: false){
                            VStack(spacing:0){
                                FeaturedTabView()
                                    .frame(height: geo.size.height * 0.35)
                                    .padding(.vertical, 20)
                                    
                                CategoryGridView()
                                
                                TitleView(title: "Helmets")
                                
                                ProductGridView()
                                
                                TitleView(title: "Brands")
                                
                                BrandGridView()
                                
                                FooterView()
                                    .padding(.horizontal)
                            }//: VSTACK

                        }//: Scroll

                        
                    }//: VStack
                    .background(colorBackground.ignoresSafeArea(.all, edges: .all))
                } else {
                    ProductDetailView()
                }
            }//: Zstack
            .ignoresSafeArea(.all, edges: .top)
        }//: GEometryREader



    }
}


// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
