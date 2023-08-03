//
//  Q2.swift
//  HomeAidNY
//
//  Created by Scholar on 8/2/23.
//

import SwiftUI

struct Q2: View {
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
                    Text("What percentage of all homeless New Yorkers are 5 years old or younger?")
                        .font(.title)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    Button("6%") {
                        textTitle = "❌Incorrect, 20% of homeless New Yorkers are 5 or younger and approximately 22,000 children are currently homeless in New York."
                    }
                    .buttonStyle(.bordered)
                    .tint(colorRed)
                    Button("43%") {
                        textTitle = "❌Incorrect, 20% of homeless New Yorkers are 5 or younger and approximately 22,000 children are currently homeless in New York."
                    }
                    .buttonStyle(.bordered)
                    .tint(colorRed)
                    Button("14%") {
                        textTitle = "❌Incorrect, 20% of homeless New Yorkers are 5 or younger and approximately 22,000 children are currently homeless in New York."
                    }
                    .buttonStyle(.bordered)
                    .tint(colorRed)
                    Button("20%") {
                        textTitle = "✅Correct! 20% of homeless New Yorkers are 5 or younger and approximately 22,000 children are currently homeless in New York."
                    }
                    .buttonStyle(.bordered)
                    .tint(colorRed)
                    Text(textTitle)
                        .font(.title3)
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                        .padding()

                    NavigationLink(destination: Q3()) {
                        Text("Next question")
                    }
                    .tint(colorRed)
                        .padding()

                    Image("q2pic")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                    
                    
                }
            }
        }
    }
}

struct Q2_Previews: PreviewProvider {
    static var previews: some View {
        Q2()
    }
}
