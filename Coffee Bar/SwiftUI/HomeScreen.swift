//
//  HomeScreen.swift
//  Coffee Bar
//
//  Created by ARTEM on 07.05.2023.
//

import SwiftUI
import Firebase

struct HomeScreen: View {
    @ObservedObject var saleArray = SaleObject()
    @State var showCardDetails = false
    var name: String = Auth.auth().currentUser?.displayName ?? "Friend"
    var body: some View {
        VStack{
            HStack{
                Text("Hello, \(name)")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.custom("Arial Rounded MT Bold", size: 25))
                    .foregroundColor(Color.greetingColor)
                    .padding(.leading, 20)
                    .padding(.top, 25)
                Button(action: {
                    do {
                        try Auth.auth().signOut()
                            }
                    catch let signOutError as NSError {
                        print ("Error signing out: %@", signOutError)
                        }
                            
                    let storyboard = UIStoryboard(name: "Main", bundle: nil)
                    let initial = storyboard.instantiateInitialViewController()
                    UIApplication.shared.keyWindow?.rootViewController = initial
                },
                       label: {
                    VStack{
                    Image(systemName: "arrowtriangle.backward.fill")
                        .foregroundColor(Color.greetingColor)
                    Text("Logout")
                            .font(.custom("Arial Rounded MT Bold", size: 12))
                            .foregroundColor(Color.greetingColor)
                }
                    .padding(.top, 25)
                    .padding(.trailing, 10)
                    
                })
                Spacer()
            }
           CardView()
                .cornerRadius(15)
                .padding(.leading, 10)
                .padding(.trailing, 10)
                .simultaneousGesture(TapGesture().onEnded{ showCardDetails.toggle()})
                .sheet(isPresented: $showCardDetails){
                    CardViewDetails()
                        .presentationDetents([.fraction(0.95)])
                }
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
