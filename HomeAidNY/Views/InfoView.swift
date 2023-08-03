//
//  InfoView.swift
//  HomeAidNY
//
//  Created by Scholar on 8/1/23.
//

import SwiftUI

struct InfoView: View {
    let backgroundColor = Color(red:0.929, green:0.867, blue:0.725)
    let colorYellow = Color(red:0.890, green: 0.635, blue:0.231)
    let colorRed = Color(hue: 0.036, saturation: 0.856, brightness: 0.844)
    var body: some View {
        NavigationStack{
            ZStack{
                backgroundColor.ignoresSafeArea()
                VStack{
                    Text("The Problem")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Text("Homelessness is an issue that affects thousands of people in New York. \nOur app aims to: \n- Provide users with a list of what they can donate \n- Provide nearby locations where people can donate \n- Help spread information about homelessness and debunk common misconceptions")
                        .padding()
                    NavigationLink(destination: Q1()) {
                        Text("Want to learn more? Click here to take this quiz!")
                            .font(.title2)
                }
                    .buttonStyle(.bordered)
                    .tint(colorRed)
            }
        }
    }
}
    
    struct InfoView_Previews: PreviewProvider {
        static var previews: some View {
            InfoView()
        }
    }
}
