//
//  BarLocationDetails.swift
//  Coffee Bar
//
//  Created by ARTEM on 08.05.2023.
//

import SwiftUI
import MapKit

struct BarLocationDetails: View {
    @Environment(\.openURL) private var openURL
    let bar: BarLocation
    @State private var region: MKCoordinateRegion
    let markers: [Marker]
    
    init(bar: BarLocation){
        self.bar = bar
        let region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: bar.latitude, longitude: bar.longtitude),
                span: MKCoordinateSpan(latitudeDelta: 0.04, longitudeDelta: 0.04))
        self._region = State(initialValue: region)
        self.markers = [Marker(location: MapMarker(coordinate: CLLocationCoordinate2D(latitude: bar.latitude, longitude: bar.longtitude), tint: .red))]
    }
    
    var body: some View {
        VStack{
            Text(bar.name)
                .frame(maxWidth: .infinity, alignment: .center)
                .font(.custom("Arial Rounded MT Bold", size: 24))
                .padding(.top,10)
                .padding(.bottom, 10)
            Image(bar.image)
                .resizable()
                .scaledToFill()
                .frame(width: .infinity, height: 250)
                .clipped()
                .cornerRadius(10)
            Text(bar.name)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.custom("Arial Rounded MT Bold", size: 22))
                    .padding(.top,20)
                    .padding(.leading,20)
                    .padding(.bottom, 5)
            Text(bar.address)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.custom("Arial Rounded MT Bold", size: 17))
                .padding(.leading,20)
                .padding(.bottom, 10)
            HStack{
                Text("11AM - 20PM")
                    .frame(maxWidth: 80, alignment: .leading)
                    .font(.custom("Arial Rounded MT Bold", size: 12))
                    .padding(10)
                    .border(Color.timeBorderColor, width: 4)
                    .cornerRadius(10)
                Button(action: {
                    let phone = "tel://"
                    let phoneNumberformatted = phone + bar.phone
                    guard let url = URL(string: phoneNumberformatted) else { return }
                    UIApplication.shared.open(url)
                }){
                    Image(systemName: "phone.circle")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding(.leading, 40)
                        .foregroundColor(Color.timeBorderColor)
                    
                }
                Button(action: {
                    if let url = URL(string: bar.instagram) {
                            openURL(url)
                    }
                }){
                    Image("instagram_logo")
                            .renderingMode(.template)
                            .resizable()
                            .frame(width: 20, height: 20, alignment: .center)
                            .padding()
                            .foregroundColor(Color.timeBorderColor)
                    .overlay(
                        Circle()
                            .stroke(Color.timeBorderColor, lineWidth: 2)
                            .padding(10)
                    )
                }
                Spacer()
            }
            .padding(.leading, 20)
            Map(coordinateRegion: $region, showsUserLocation: true, annotationItems: markers){ marker in
                marker.location
            }
            Spacer()
        }
        
    }
}

struct BarLocationDetails_Previews: PreviewProvider {
    static var previews: some View {
        BarLocationDetails(bar: BarLocation(image: "barLocation1",
                                       name: "Dream Town",
                                       address: "Obolonsky st. 23",
                                       latitude: 50.507925973722415,
                                       longtitude: 30.498210453075934,
                                       phone: "+380672223344",
                                       instagram: "https://www.instagram.com/coffee/"))
    }
}
extension Color{
    static let timeBorderColor = Color(red: 129/255, green: 132/255, blue: 159/255)
}

struct Marker: Identifiable {
    let id = UUID()
    var location: MapMarker
}
