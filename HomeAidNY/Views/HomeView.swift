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
                 //   Text("HomeAidNY")
               //         .font(.largeTitle)
               //         .fontWeight(.medium)
                 //       .foregroundColor(colorRed)
                    Image("HomeAidNY Logo")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                    Text("Homelessness is an issue that affects thousands of people in New York. \nOur app aims to: \n- Provide users with a list of what they can donate \n- Provide nearby locations where people can donate \n- Help spread information about homelessness and debunk common misconceptions")
                        .font(.title3)
                    NavigationLink(destination: Q1()) {
                        Text("Want to learn more? Click here to take this quiz!")
                            .font(.title)
                            .foregroundColor(colorYellow)
                    }
                        .toolbar {
                            ToolbarItemGroup(placement: .status){
                                NavigationLink(destination: AboutUsView()) {
                                    Text("About")
                                        .foregroundColor(colorYellow)
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
