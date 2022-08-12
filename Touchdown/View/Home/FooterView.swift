//
//  FooterView.swift
//  Touchdown
//
//  Created by Rajanish Karki on 8/11/22.
//

import SwiftUI

struct FooterView: View {
    
    var body: some View {
        
        // MARK: - properties
        
        // MARK: - Body
        VStack(alignment: .center, spacing: 10) {
            Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices. ")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text("Copyright © Rajanish Karki\nAll rights reserved")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .layoutPriority(1)
                .multilineTextAlignment(.center)
            
        }
        .padding()
    }
}

// MARK: - Previews
struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
