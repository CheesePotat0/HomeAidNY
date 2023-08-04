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
                VStack(spacing: 20.0) {
                    Text("The Problem")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Text("Homelessness is an issue that affects thousands of people in New York. But you can do many things to help! \n \nIf you are looking for service hours, many donation centers want volunteers who sign up. \nYou can also help by donating items to donation centers. When donating items, clothes should be relatively clean and food should be unexpired. The best plan of action would be to ask your local shelter what items they need. Alternatively, some organizations sell goods and give portions to the homeless.")
                    NavigationLink(destination: MythView()) {
                        Text("Click here to view common myths about homelessness.")
                            .font(.title2)
                }
                    .buttonStyle(.bordered)
                    .tint(colorRed)
            }
                .padding()
        }
    }
}
    
    struct InfoView_Previews: PreviewProvider {
        static var previews: some View {
            InfoView()
        }
    }
}
