//
//  Content1View.swift
//  cofffeUI
//
//  Created by Diar Orynbek on 26.10.2022.
//

import SwiftUI

struct Content1View: View {
    @State var coffee: [String] = ["Cappuccino", "Iced Latte Macchiato", "Caffè Latte", "Латте Соленая Карамель"]
    
    var body: some View {
        Text("Hello World")
    }
}

struct Content1View_Previews: PreviewProvider {
    static var previews: some View {
        Content1View()
    }
}
