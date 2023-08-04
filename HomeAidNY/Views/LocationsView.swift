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
                    VStack{
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
                        Text("Click on a borough to see where you can donate! \nIf a donation center has a ✅, you can volunteer there! Check out the center's website to learn more.")
                    }
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
    
    let manhattanDonations = [["name":"Bowery Mission (Bowery)✅", "address":"227 Bowery, New York, NY 10002", "website":"https://www.bowery.org/volunteer/"], ["name":"Bowery Mission (Tribeca)✅", "address":"90 Lafayette St, New York, NY 10013", "website":"https://www.bowery.org/volunteer/"], ["name":"AIDS Service Center of Lower Manhattan✅", "address":"41 E. 11th St. (between Broadway and University Place), New York, New York", "website":"https://alliance.nyc/volunteer"],["name":"HousingWorks✅","address":"Multiple locations across Manhattan and Brooklyn", "website":"https://www.housingworks.org/volunteer"]]
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            List {
                ForEach(manhattanDonations, id: \.self) { donationCenter in
                    VStack {
                        Text("**Name:** \(donationCenter["name"] ?? "error") \n**Address:** \(donationCenter["address"] ?? "error") \n**Website:** \(donationCenter["website"] ?? "error")")
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
    let brooklynDonations = [["name":"CAMBA✅", "address":"19 Winthrop Street Brooklyn, NY 11225", "website":"https://camba.org/support/volunteer/"], ["name":"Family Resource Center", "address":"100 Penn, 3rd Floor, Brooklyn 11207", "website":""],["name":"Brooklyn Community Pride Center Pantry✅", "address":"1360 Fulton St, Brooklyn, NY 11216", "website":"https://www.lgbtbrooklyn.org/volunteers"]]
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            List {
                ForEach(brooklynDonations, id: \.self) { donationCenter in
                    VStack {
                        Text("**Name:** \(donationCenter["name"] ?? "error") \n**Address:** \(donationCenter["address"] ?? "error") \n**Website:** \(donationCenter["website"] ?? "error")")
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
    
    let queensDonations = [["name":"Goodwill Industries", "address":"421 27th Ave, #1, Astoria, NY 11102", "website":"https://www.goodwill.org/"], ["name":"Celene's Thrift Shop", "address":"568 Grandview Ave, Ridgewood, NY 11385", "website":"https://www.yelp.com/biz/celenes-thrift-shop-ridgewood"],["name":"Scrap NYC", "address":"3038 Steinway Street, Queens, NY 11103", "website":"https://www.scrapnyc.com/"]]
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            List {
                ForEach(queensDonations, id: \.self) { donationCenter in
                    VStack {
                        Text("**Name:** \(donationCenter["name"] ?? "error") \n**Address:** \(donationCenter["address"] ?? "error") \n**Website:** \(donationCenter["website"] ?? "error")")
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
    
    let bronxDonations = [["name":"Room to Grow✅", "address":"424 East 147th Street, Bronx, NY 10455", "website":"https://www.roomtogrow.org/volunteer"], ["name":"Salvation Army", "address":"Multiple locations", "website":"https://www.salvationarmyusa.org/usn/"]]
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            List {
                ForEach(bronxDonations, id: \.self) { donationCenter in
                    VStack {
                        Text("**Name:** \(donationCenter["name"] ?? "error") \n**Address:** \(donationCenter["address"] ?? "error") \n**Website:** \(donationCenter["website"] ?? "error")")
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
    
    let statenIslandDonations = [["name":"Salvation Army", "address":"Multiple Locations", "website":"https://www.salvationarmyusa.org/usn/"], ["name":"Central Family Life Center✅", "address":"59 Wright St, Staten Island, NY 10304", "website":"https://www.centralfamilylifecenter.org/ways-to-give"]]
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            List {
                ForEach(statenIslandDonations, id: \.self) { donationCenter in
                    VStack {
                        Text("**Name:** \(donationCenter["name"] ?? "error") \n**Address:** \(donationCenter["address"] ?? "error") \n**Website:** \(donationCenter["website"] ?? "error")")
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
