//
//  ContentView.swift
//  Coffee Bar
//
//  Created by ARTEM on 08.05.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .featured

    enum Tab {
            case featured
            case list
    }
    var body: some View {
        TabView(selection: $selection) {
                    HomeScreen()
                    .tabItem {
                        Label("Home", systemImage: "homekit")
                            }
                        .tag(Tab.featured)

                    BarList()
                    .tabItem {
                        Label("Bars", systemImage: "list.bullet")
                                }
                        .tag(Tab.list)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
