//
//  LocationsView.swift
//  HomeAidNY
//
//  Created by Scholar on 8/1/23.
//

import SwiftUI

struct LocationsView: View {
    //color vars
    let backgroundColor = Color(red:0.929, green:0.867,blue:0.725)
    let accentColor = Color(red:0.6,green:0.31,blue:0.133)
    // an array of dict
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            NavigationView {
                ZStack {
                    backgroundColor.ignoresSafeArea()
                    List {
                        NavigationLink(destination: Manhattan()) { Text("Manhattan") }.listRowBackground(accentColor)
                            .foregroundColor(.white)
                        NavigationLink(destination: Brooklyn()) { Text("Brooklyn") }.listRowBackground(accentColor)
                            .foregroundColor(.white)
                        NavigationLink(destination: Queens()) { Text("Queens") }.listRowBackground(accentColor)
                            .foregroundColor(.white)
                        NavigationLink(destination: Bronx()) { Text("Bronx") }.listRowBackground(accentColor)
                            .foregroundColor(.white)
                        NavigationLink(destination: StatenIsland()) { Text("Staten Island") }.listRowBackground(accentColor)
                            .foregroundColor(.white)
                    }
                    .navigationBarTitle("Donation Centers")
                    .scrollContentBackground(.hidden)
                }
                }
        }
    }
}

struct Manhattan: View {
    //colors
    let backgroundColor = Color(red:0.929, green:0.867,blue:0.725)
    let accentColor = Color(red:0.965,green:0.682,blue:0.231)
    let accentColor2 = Color(red:0.169,green:0.173,blue:0.169)
    
    let manhattanDonations = [["name":"Bowery Mission (Bowery)", "address":"227 Bowery, New York, NY 10002"], ["name":"Bowery Mission (Tribeca)", "address":"90 Lafayette St, New York, NY 10013"], ["name":"AIDS Service Center of Lower Manhattan ", "address":"41 E. 11th St. (between Broadway and University Place), New York, New York "],["name":"HousingWorks","address":"Multiple locations across Manhattan and Brooklyn"]]
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            List {
                ForEach(manhattanDonations, id: \.self) { donationCenter in
                    VStack {
                        Text("**Name:** \(donationCenter["name"] ?? "error") \n**Address:** \(donationCenter["address"] ?? "error")")
    //                    Button("Website") {
    //
    //                    }
                    }.listRowBackground(accentColor)
                        .foregroundColor(accentColor2)
                    
                }
            }
//            .scrollContentBackground(.hidden)
//            .background(backgroundColor)
            
        
        }
        .scrollContentBackground(.hidden)
        
//        Text(manhattanDonations[0]["name"] ?? "error")
//        manhattanDonations.forEach { donationCenter in
//            Text(donationCenter["name"] ?? "error")
//            Text(donationCenter["name"]!)
//        }
    }
}

struct Brooklyn: View {
    //colors
    let accentColor = Color(red:0.965,green:0.682,blue:0.231)
    let accentColor2 = Color(red:0.169,green:0.173,blue:0.169)
    let backgroundColor = Color(red:0.929, green:0.867,blue:0.725)
    
//    ["name":"","address":""]
    let brooklynDonations = [["name":"CAMBA", "address":"19 Winthrop Street Brooklyn, NY 11225"], ["name":"Family Resource Center", "address":"100 Penn, 3rd Floor, Brooklyn 11207"],["name":"Brooklyn Community Pride Center Pantry", "address":"1360 Fulton St, Brooklyn, NY 11216"]]
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            List {
                ForEach(brooklynDonations, id: \.self) { donationCenter in
                    VStack {
                        Text("**Name:** \(donationCenter["name"] ?? "error") \n**Address:** \(donationCenter["address"] ?? "error")")
    //                    Button("Website") {
    //
    //                    }
                    }.listRowBackground(accentColor)
                        .foregroundColor(accentColor2)
                    
                }
            }
        }
        .scrollContentBackground(.hidden)
    }
}

struct Queens: View {
    //colors
    let backgroundColor = Color(red:0.929, green:0.867,blue:0.725)
    let accentColor = Color(red:0.965,green:0.682,blue:0.231)
    let accentColor2 = Color(red:0.169,green:0.173,blue:0.169)
    
    let queensDonations = [["name":"Goodwill Industries", "address":"421 27th Ave, #1, Astoria, NY 11102"], ["name":"Celene's Thrift Shop", "address":"568 Grandview Ave, Ridgewood, NY 11385"],["name":"Scrap NYC", "address":"3038 Steinway Street, Queens, NY 11103"]]
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            List {
                ForEach(queensDonations, id: \.self) { donationCenter in
                    VStack {
                        Text("**Name:** \(donationCenter["name"] ?? "error") \n**Address:** \(donationCenter["address"] ?? "error")")
    //                    Button("Website") {
    //
    //                    }
                    }.listRowBackground(accentColor)
                        .foregroundColor(accentColor2)
                    
                }
            }
        }.scrollContentBackground(.hidden)
        
    }
}

struct Bronx: View {
    //colors
    let accentColor = Color(red:0.965,green:0.682,blue:0.231)
    let accentColor2 = Color(red:0.169,green:0.173,blue:0.169)
    let backgroundColor = Color(red:0.929, green:0.867,blue:0.725)
    
    let bronxDonations = [["name":"Room to Grow (for babies and young mothers)", "address":"424 East 147th Street, Bronx, NY 10455"], ["name":"Salvation Army", "address":"Multiple locations"]]
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            List {
                ForEach(bronxDonations, id: \.self) { donationCenter in
                    VStack {
                        Text("**Name:** \(donationCenter["name"] ?? "error") \n**Address:** \(donationCenter["address"] ?? "error")")
    //                    Button("Website") {
    //
    //                    }
                    }.listRowBackground(accentColor)
                        .foregroundColor(accentColor2)
                    
                }
            }
        }
        .scrollContentBackground(.hidden)
    }
}

struct StatenIsland: View {
    //colors
    let accentColor = Color(red:0.965,green:0.682,blue:0.231)
    let accentColor2 = Color(red:0.169,green:0.173,blue:0.169)
    let backgroundColor = Color(red:0.929, green:0.867,blue:0.725)
    
    let statenIslandDonations = [["name":"Salvation Army", "address":"Multiple Locations"], ["name":"Central Family Life Center", "address":"59 Wright St, Staten Island, NY 10304"]]
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            List {
                ForEach(statenIslandDonations, id: \.self) { donationCenter in
                    VStack {
                        Text("**Name:** \(donationCenter["name"] ?? "error") \n**Address:** \(donationCenter["address"] ?? "error")")
    //                    Button("Website") {
    //
    //                    }
                    }.listRowBackground(accentColor)
                        .foregroundColor(accentColor2)
                    
                }
            }
        }
        .scrollContentBackground(.hidden)
    }
}
