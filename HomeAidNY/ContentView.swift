//
//  ContentView.swift
//  HomeAidNY
//
//  Created by Scholar on 7/31/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem(){
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            ListView()
                .tabItem(){
                    Image(systemName: "gift.fill")
                    Text("List")
                }
            LocationsView()
                .tabItem(){
                    Image(systemName: "mappin")
                    Text("Locations")
                }
            InfoView()
                .tabItem(){
                    Image(systemName: "info.bubble")
                    Text("Info")
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
