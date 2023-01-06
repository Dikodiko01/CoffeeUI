//
//  Product.swift
//  cofffeUI
//
//  Created by Diar Orynbek on 26.10.2022.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "Cappuccino", image: "sweater1", price: 5),
                  Product(name: "Signature Hot Chocolate", image: "sweater2", price: 10),
                  Product(name: "Something strange ;)", image: "sweater3", price: 12),
                  Product(name: "Espresso Frappuccino", image: "sweater4", price: 9),
                  Product(name: "Coffee Frappuccino", image: "sweater5", price: 15),
                  Product(name: "Сок Rich Апельсин 330 мл", image: "sweater6", price: 12),
                  Product(name: "Клаб-сэндвич", image: "sweater7", price: 18),
                  Product(name: "Круассан с индейкой", image: "sweater8", price: 20)
]
