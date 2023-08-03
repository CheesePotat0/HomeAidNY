//
//  HomeView.swift
//  HomeAidNY
//
//  Created by Scholar on 8/1/23.
//

import SwiftUI

struct HomeView: View {
    let backgroundColorBeige = Color(red:0.929, green:0.867, blue:0.725)
    let colorYellow = Color(red:0.890, green: 0.635, blue:0.231)
    let colorRed = Color(hue: 0.036, saturation: 0.856, brightness: 0.844)
    var body: some View {
        NavigationStack {
            ZStack{
                backgroundColorBeige.ignoresSafeArea()
                VStack (spacing: 25.0) {
                    Image("HomeAidNY Logo")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .font(.title3)
                    NavigationLink(destination: Q1()) {
                        Text("Take this quiz to see how much you know about homelessness!")
                            .font(.title)
                    }
                    
                    .buttonStyle(.borderedProminent)
                    .tint(colorRed)
                        .toolbar {
                            ToolbarItemGroup(placement: .status){
                                NavigationLink(destination: AboutUsView()) {
                                    Text("About")
                                        .foregroundColor(colorRed)
                                }
                            }
                        }
                        .padding()
                }
            }
        }
    }
    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
        }
    }
}
