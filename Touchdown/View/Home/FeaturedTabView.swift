//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Rajanish Karki on 8/13/22.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView {
            ForEach(players) {player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        }//: TabView
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))

    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .background(.gray)
    }
}
