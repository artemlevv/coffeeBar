//
//  BarList.swift
//  Coffee Bar
//
//  Created by ARTEM on 08.05.2023.
//

import SwiftUI

struct BarList: View {
    @StateObject var barArray = BarLocationObject()
    var body: some View {
        VStack{
            Text("Coffee bars")
                .font(.custom("Arial Rounded MT Bold", size: 25))
                .padding(.top, 10)
                .padding(.bottom, 10)
            ScrollView(showsIndicators: false){
                VStack(){
                    ForEach(barArray.barLocation, id: \.name){ s in
                        BarView(bar: s)
                            .padding(.bottom, -50)
                    }
                }
            }
        }
    }
}

struct BarList_Previews: PreviewProvider {
    static var previews: some View {
        BarList()
    }
}
