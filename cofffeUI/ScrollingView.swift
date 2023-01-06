//
//  ScrollingView.swift
//  cofffeUI
//
//  Created by Diar Orynbek on 27.10.2022.
//

import SwiftUI

struct ScrollingView: View {
    var body: some View {
        Text("Popular")
            .font(.system(size: 23).bold())
            .padding(.horizontal)

        ScrollView (.horizontal, showsIndicators: false){
            HStack {
                ForEach(0 ..< 5) { index in
                    NavigationLink (
                        destination: DetailScreen(),
                        label: {
                            ProductCardView(image: Image("chair_\(index + 1)"), size: 210)// просто красиво вауу

                        })
                        .navigationBarHidden(true)
                        .foregroundColor(.black)
                }
                .padding(.trailing )
            }
            .padding(.leading)
        }
        
    }
}

struct ScrollingView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollingView()
    }
}
