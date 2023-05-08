//
//  SaleDetails.swift
//  Coffee Bar
//
//  Created by ARTEM on 08.05.2023.
//

import SwiftUI

struct SaleDetails: View {
    let sale: Sale
    var body: some View {
        VStack{
            Image(sale.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: .infinity, height: 210)
                    .clipped()
                Text(sale.title)
                .frame(maxWidth: .infinity, alignment: .center)
                    .font(.custom("Arial Rounded MT Bold", size: 20))
                    .padding(.top, 15)
                    .padding(.bottom, 15)
                Text(sale.description)
                .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.custom("Arial Rounded MT Bold", size: 17))
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                Spacer()
        }
    }
}

struct SaleDetails_Previews: PreviewProvider {
    static var previews: some View {
        SaleDetails(sale: Sale(image: "first_sale",
                         title: "🌺 SPRING MENU 🌷",
                         description: """
                         🌷It's time to Bloom and fall in love!
                         Drinks that perfectly reflect the Taste and
                         Aroma of Spring!

                         🍋LEMONADE Currant-Basil
                         🌺SMOOTHIE Raspberry-Violet
                         🍊SMOOTHIE Sea buckthorn-orange
                         Taste it at every Coffee bar
                         """))
    }
}
