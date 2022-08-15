//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Rajanish Karki on 8/12/22.
//

import SwiftUI

struct NavigationBarView: View {
    
    // MARK: - Propetites
    @State private var isAnimated: Bool = false
    
    // MARK: - Body
    var body: some View {
        HStack{
            Button(action: {}) {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            }//: Button

            
            Spacer()
            
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : 25)
                .onAppear {
                    withAnimation(.easeOut(duration: 0.5)){
                        isAnimated.toggle()
                    }
                }
            
            Spacer()
            
            Button(action: {}) {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                    .foregroundColor(.black)
                    
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 15, alignment: .center)
                        .offset(x: 13, y: -10)
                }//: Zstack

            }//: Button

        }//: Hstack

    }
}


// MARK: - Preview
struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
