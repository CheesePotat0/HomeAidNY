//
//  Q1.swift
//  HomeAidNY
//
//  Created by Scholar on 7/31/23.
//

import SwiftUI

struct Q1: View {
    let backgroundColor = Color(red:0.929, green:0.867,blue:0.725)
    let colorYellow = Color(red:0.890, green: 0.635, blue:0.231)
    let colorRed = Color(hue: 0.036, saturation: 0.856, brightness: 0.844)
    @State private var textTitle = "..."
    var body: some View {
        NavigationStack {
            ZStack {
                backgroundColor.ignoresSafeArea()
                VStack {
                    Spacer()
                    Text("In May 2023, how many people slept in the main NYC shelter system?")
                        .font(.title)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    Button("32,586") {
                        textTitle = "❌Incorrect, May 2023 had a record number of 83,649 people sleeping each night in New York City's main municipal shelter system."
                    }
                    .buttonStyle(.bordered)
                    .tint(colorRed)
                    Button("83,649") {
                        textTitle = "✅Correct! May 2023 had a record number of 83,649 people sleeping each night in New York City's main municipal shelter system."
                    }
                    .buttonStyle(.bordered)
                    .tint(colorRed)
                    Button("5,093") {
                        textTitle = "❌Incorrect, May 2023 had a record number of 83,649 people sleeping each night in New York City's main municipal shelter system."
                    }
                    .buttonStyle(.bordered)
                    .tint(colorRed)
                    Button("276,442") {
                        textTitle = "❌Incorrect, May 2023 had a record number of 83,649 people sleeping each night in New York City's main municipal shelter system."
                    }
                    .buttonStyle(.bordered)
                    .tint(colorRed)
                    Text(textTitle)
                        .font(.title3)
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                        .padding()
                    NavigationLink(destination: Q2()) {
                        Text("Next question")
                    }
                    .tint(colorRed)
                        .padding()

                    Image("q1pic")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                    
                }
            }
        }
    }
}

struct Q1_Previews: PreviewProvider {
    static var previews: some View {
        Q1()
    }
}
