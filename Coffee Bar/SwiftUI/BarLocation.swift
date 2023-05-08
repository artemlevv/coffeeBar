//
//  BarLocation.swift
//  Coffee Bar
//
//  Created by ARTEM on 08.05.2023.
//

import Foundation
class BarLocationObject: ObservableObject{
    @Published var barLocation: [BarLocation] = []
    init(){
        barLocation.append(BarLocation(image: "barLocation1",
                                       name: "Dream Town",
                                       address: "Obolonsky st. 23",
                                       latitude: 50.507925973722415,
                                       longtitude: 30.498210453075934,
                                       phone: "+380672223344",
                                       instagram: "https://www.instagram.com/coffee/"))
        barLocation.append(BarLocation(image: "barLocation1",
                                       name: "Respublika Park",
                                       address: "Ring road, 1",
                                       latitude: 50.374676091152935,
                                       longtitude: 30.449465324233152,
                                       phone: "+380672223344",
                                       instagram: "https://www.instagram.com/coffee/"))
        barLocation.append(BarLocation(image: "barLocation1",
                                       name: "Sky Mall",
                                       address: "Romana Shukhevych st. 2",
                                       latitude: 50.49372920158524,
                                       longtitude: 30.56011940889786,
                                       phone: "+380672223344",
                                       instagram: "https://www.instagram.com/coffee/"))
        barLocation.append(BarLocation(image: "barLocation1",
                                       name: "Globus",
                                       address: "Maidan Nezalezhnosti, 2",
                                       latitude: 50.45095363253267,
                                       longtitude: 30.522898381908202,
                                       phone: "+380672223344",
                                       instagram: "https://www.instagram.com/coffee/"))
        
    }
}

struct BarLocation{
    let image: String
    let name: String
    let address: String
    let latitude: Double
    let longtitude: Double
    let phone: String
    let instagram: String
}
