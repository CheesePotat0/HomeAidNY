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
    var body: some View {
        NavigationStack{
            ZStack{
                backgroundColor.ignoresSafeArea()
                NavigationLink(destination: Q1()) {
                    Text("Want to learn more? Click here to take this quiz!")
                        .font(.title2)
                        .foregroundColor(colorYellow)
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
