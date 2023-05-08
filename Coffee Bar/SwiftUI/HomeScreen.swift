//
//  HomeScreen.swift
//  Coffee Bar
//
//  Created by ARTEM on 07.05.2023.
//

import SwiftUI

struct HomeScreen: View {
    @ObservedObject var saleArray = SaleObject()
    var name = "Artem"
    var body: some View {
        VStack{
            Text("Hello, \(name)")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.custom("Arial Rounded MT Bold", size: 25))
                .foregroundColor(Color.greetingColor)
                .padding(.leading, 20)
                .padding(.top, 25)
           CardView()
                .cornerRadius(15)
                .padding(.leading, 10)
                .padding(.trailing, 10)
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 20){
                    ForEach(saleArray.sales, id: \.title){ s in
                        SaleView(sale: s)
                    }
                }
            }
            .padding(.leading, 10)
            .padding(.trailing, 10)
            .padding(.top, 15)
                
                
            //.padding(.leading, 20)
            //.padding(.trailing,20)
            //.background(Color.greetingColor)
            Spacer()
        }
            
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}

extension Color{
    static let greetingColor = Color(red: 136/255, green: 137/255, blue: 236/255)
    
            
}
