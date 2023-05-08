//
//  CardViewDetails.swift
//  Coffee Bar
//
//  Created by ARTEM on 08.05.2023.
//

import SwiftUI

struct CardViewDetails: View {
    let qrString = "356782378263562"
    let bonuses = 25
    let cashback = 5
    var body: some View {
        VStack{
            Text("Your Card")
                .font(.custom("Arial Rounded MT Bold", size: 28))
                .padding(.top, 15)
            HStack(alignment: .center){
                VStack{
                    Text("\(bonuses)")
                        .font(.custom("Arial Rounded MT Bold", size: 28))
                        .padding(.top, 20)
                    Text("Your bonuses")
                        .font(.custom("Arial Rounded MT Bold", size: 15))
                        .padding(.bottom, 20)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                }
                .frame(width: 150)
                .background(Color.greetingColor)
                .cornerRadius(15)
                .opacity(0.7)
                .padding(.trailing, 15)
                VStack{
                    Text("\(cashback)%")
                        .font(.custom("Arial Rounded MT Bold", size: 28))
                        .padding(.top, 20)
                    Text("Your cashback")
                        .font(.custom("Arial Rounded MT Bold", size: 15))
                        .padding(.bottom, 20)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                }
                .frame(width: 150)
                .background(Color.greetingColor)
                .cornerRadius(15)
                .opacity(0.7)
                
            }
            VStack{
                Image(systemName: "qrcode")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .padding(.top, 50)
                    .padding(.leading, 50)
                    .padding(.trailing, 50)
                Text(qrString)
                    .font(.custom("Arial Rounded MT Bold", size: 17))
                    .padding(.top, 15)
                    .padding(.bottom, 50)
            }
            .background(Color.qrCodeBack)
            .border(Color.green)
            .cornerRadius(20)
            .padding(.top, 30)
            Spacer()
        }
    }
}

struct CardViewDetails_Previews: PreviewProvider {
    static var previews: some View {
        CardViewDetails()
    }
}
extension Color{
    static let qrCodeBack = Color(red: 159/255, green: 226/255, blue: 191/255)
}
