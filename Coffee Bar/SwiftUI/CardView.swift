//
//  CardView.swift
//  Coffee Bar
//
//  Created by ARTEM on 07.05.2023.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        VStack{
            HStack{
                Text("25")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.custom("Arial Rounded MT Bold", size: 35))
                    .foregroundColor(Color.white)
                    .padding(.leading, 20)
                Image(systemName: "qrcode")
                    .resizable()
                    .frame(width:30, height:30)
                    .foregroundColor(Color.white)
                    .padding(.trailing, 20)
            }
            .padding(.top, 20)
            Text("Available bonuses")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.custom("Arial Rounded MT Bold", size: 15))
                .foregroundColor(Color.white)
                .padding(.leading, 20)
            HStack{
                Text("5%")
                    .frame(width: 50, height: 40)
                    .font(.custom("Arial Rounded MT Bold", size: 20))
                    .foregroundColor(Color.white)
                    .background(Color.black)
                    .cornerRadius(11)
                    .padding(.leading, 20)
                Text("Cashback")
                    .font(.custom("Arial Rounded MT Bold", size: 17))
                    .foregroundColor(Color.white)
                Spacer()
            }
            .padding(.top, 60)
                Spacer()
        }
        .background(Color.greetingColor)
        .frame(height: 230)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
