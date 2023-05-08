//
//  SaleView.swift
//  Coffee Bar
//
//  Created by ARTEM on 08.05.2023.
//

import SwiftUI

struct SaleView: View {
    @State var showDetails = false
    let sale: Sale
    var body: some View {
        VStack{
            Image(sale.image)
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                .clipped()
                .cornerRadius(10)
            Text(sale.title)
                .frame(width: 185, height: 80, alignment: .leading)
                .padding(.leading, 15)
                .font(.custom("Arial Rounded MT Bold", size: 18))
                .background(Color.saleLabelColor)
                .cornerRadius(10)
                .offset(y: -88)
                .padding(.bottom, -130)
                .foregroundColor(Color.white)
                .opacity(0.9)
        }
        .simultaneousGesture(TapGesture().onEnded{ showDetails.toggle()})
        .sheet(isPresented: $showDetails){
            SaleDetails(sale: sale)
                .presentationDetents([.fraction(0.8)])
        }
    }
}

struct SaleView_Previews: PreviewProvider {
    static var previews: some View {
        SaleView(sale: Sale(image: "first_sale",title: "SPRING MENU", description: "" ))
    }
}
extension Color{
    static let saleLabelColor = Color(red: 89/255, green: 0/255, blue: 66/255)
}
