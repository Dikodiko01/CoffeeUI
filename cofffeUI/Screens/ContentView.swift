//
//  ContentView.swift
//  cofffeUI
//
//  Created by Diar Orynbek on 22.10.2022.
//

import SwiftUI

class Percentage:ObservableObject {
@Published var percentage : CGFloat = 0
}

struct ContentView: View {
    var body: some View {
        VStack {
            HomeScreen()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}














struct DescriptionView: View {
    var body: some View {
        VStack (alignment: .leading) {
            Text("Luxury Sweaden  \nchair")
                .font(.title)
                .fontWeight(.bold)
            
            HStack (spacing: 4) {
                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    Image(systemName: "star.fill")
                        .foregroundColor(Color(red: 255, green: 222, blue: 0))
                }
                Text("(4.9)")
                    .opacity(0.5)
                    .padding(.leading, 8)
                Spacer()
            }
            Text("Description")
                .fontWeight(.medium)
                .padding(.vertical, 8)
            
            Text("Oakwood frame coated with polyurethane lacquer for high resistance to intensive use.")
                .lineSpacing(8)
                .opacity(0.6)
            
            HStack {
                VStack (alignment: .leading) {
                    Text("Size")
                        .fontWeight(.semibold)
                        .padding(.bottom, 4)
                    Text("Height: 120 cm")
                        .opacity(0.6)
                    Text("Width: 80 cm")
                        .opacity(0.6)
                    Text("Diametr: 220cm")
                        .opacity(0.6)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack (alignment: .leading) {
                    Text("Treatment")
                        .fontWeight(.semibold)
                        .padding(.bottom, 4)
                    Text("Jati wood canvas, \nAmazing class")
                        .opacity(0.6)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.vertical)
            
        }
        .padding()
        .padding(.top )
        .background(Color(red:255, green: 255, blue: 255))
        .cornerRadius(40)
    }
}

