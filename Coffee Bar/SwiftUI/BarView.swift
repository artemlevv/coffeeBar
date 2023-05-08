//
//  BarView.swift
//  Coffee Bar
//
//  Created by ARTEM on 08.05.2023.
//

import SwiftUI

struct BarView: View {
    @State var showDetails = false
    
    let bar: BarLocation
    
    var body: some View {
            VStack{
                Image(bar.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 350, height: 220)
                    .clipped()
                    .cornerRadius(10)
                VStack{
                    Text(bar.name)
                        .font(.custom("Arial Rounded MT Bold", size: 22))
                    Text(bar.address)
                        .font(.custom("Arial Rounded MT Bold", size: 14))
                }
                .frame(width: 350, height: 80)
                .background(Color.barLabelColor)
                .cornerRadius(10)
                .offset(y: -88)
                .foregroundColor(Color.barTextColor)
                .opacity(0.85)
                Spacer()
            }
            .simultaneousGesture(TapGesture().onEnded{ showDetails.toggle()})
            .sheet(isPresented: $showDetails){
                BarLocationDetails(bar: self.bar)
                    .presentationDetents([.fraction(0.95)])
            }
    }
}

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView(bar: BarLocation(image: "barLocation1",
                            name: "Dream Town",
                            address: "Obolonsky st. 23",
                            latitude: 50.507925973722415,
                            longtitude: 30.498210453075934,
                            phone: "+380672223344",
                            instagram: "https://www.instagram.com/coffee/"))
    }
}
extension Color{
    static let barLabelColor = Color(red: 198/255, green: 226/255, blue: 255/255)
    static let barTextColor = Color(red: 87/255, green: 67/255, blue: 39/255)
}
