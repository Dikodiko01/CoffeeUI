//
//  HomeScreen.swift
//  cofffeUI
//
//  Created by Diar Orynbek on 23.10.2022.
//

import SwiftUI

struct HomeScreen: View {
    @State private var selectedIndex: Int = 0
    private let categories = ["All", "Hot Coffees", "Hot Teas", "Hot Drinks", "Cold Coffees"]
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 238/255, green: 238/255, blue: 238/255)
                
                
                ScrollView {
                    VStack (alignment: .leading) {
                        //AppBarView()
                        
                        //TagLineView()
                         //   .padding()
                        
                        SearchAndScan()
                        
                        ScrollView(.horizontal, showsIndicators: false){
                            
                            HStack {
                                ForEach(0 ..< categories.count) { i in
                                    CategeryView(isActive: i==selectedIndex, text: categories[i])
                                        .onTapGesture {
                                            selectedIndex = i
                                        }
                                }
                            }
                            .padding()
                        }
                        
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
                        
                        
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Container@*/VStack/*@END_MENU_TOKEN@*/ {
                            Text("Best")
                                .font(.system(size: 23).bold())
                                .padding(.horizontal)
                            .padding(.top)
                        
                        ScrollView (.horizontal, showsIndicators: false){
                            HStack {
                                ForEach(0 ..< 5) { index in
                                    ProductCardView(image: Image("chair_\(index + 1)"), size: 180)
                                }
                                .padding(.trailing )
                            }
                            .padding(.leading)
                        }
                        }
                        
                        
                        
                        
                        
                        
                    }
                }
                
                HStack {
                    ButtomNavBarItem(image: Image(systemName: "house")) {}
                    ButtomNavBarItem(image: Image(systemName: "heart")) {}
                    ButtomNavBarItem(image: Image(systemName: "house")) {}
                    ButtomNavBarItem(image: Image(systemName: "person")) {}
                    
                }
                .padding()
                .background(Color(red: 255/255, green: 255/255, blue: 255/255))
                .clipShape(Capsule())
                .padding(.horizontal)
                .frame(maxHeight: .infinity, alignment: .bottom)
            }
        }
    }
}


struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}

struct AppBarView: View {
    var body: some View {
        HStack {
            Button(action: {}) {
                Image(systemName: "slider.horizontal.3")
                    .padding()
                    .background(Color(red:255/255, green: 255/255, blue: 255/255))
                    .cornerRadius(10)
            }
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "person.circle")
                    .padding()
                    .frame(width: 46, height: 46)
                    .background(Color(red:255/255, green: 255/255, blue: 255/255))
            }
            .cornerRadius(10)
        }
        
        .padding(.horizontal)
    }
}

struct TagLineView: View {
    var body: some View {
        Text("Find The \nBest  ")
            .font(.system(size: 30, design: .default))
        + Text("Coffee")
            .font(.system(size: 30,weight: .bold, design: .default))
    }
}

struct SearchAndScan: View {
    @State private var search: String = ""
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .padding(.trailing, 8)
                TextField("Search Furniture", text: $search)
            }
            .padding()
            .background(Color(red:255/255, green: 255/255, blue: 255/255))
            .cornerRadius(10)
            .padding(.horizontal )
            
        }
    }
}

struct CategeryView: View {
    let isActive: Bool
    let text: String
    
    var body: some View {
        VStack (alignment: .leading, spacing: 0){
            Text(text)
                .font(.system(size: 18))
                .fontWeight(.medium)
            
        }
        .padding(.trailing)
    }
}

struct ProductCardView: View {
    let image: Image
    let size: CGFloat
    var body: some View {
        VStack {
            image
                .resizable()
                .frame(width: size, height: 200 * (size/210))
                .cornerRadius(20)
            Text("Luxuty Swedian chair")
                .font(.title3)
                .fontWeight(.bold)
            
            HStack(spacing: 2) {
                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    Image(systemName: "star.fill")
                        .foregroundColor(Color(.systemYellow))
                        .frame(width: 20, height: 20)
                }
                Spacer()
                
                Text("$12990")
                    .font(.title3)
                    .fontWeight(.bold )
            }
        }
        .frame(width: size)
        .padding()
        .background()
        .cornerRadius(20)
    }
}

struct ButtomNavBarItem: View {
    let image: Image
    let action: ()-> Void
    var body: some View {
        Button(action: action, label: {
            image
                .frame(width: 42, height: 28)
                .frame(maxWidth: .infinity)
            
        })
    }
}
