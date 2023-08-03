//
//  MythView.swift
//  HomeAidNY
//
//  Created by Scholar on 8/3/23.
//

import SwiftUI

struct MythView: View {
    let backgroundColor = Color(red:0.929, green:0.867, blue:0.725)
    let colorYellow = Color(red:0.890, green: 0.635, blue:0.231)
    let colorRed = Color(hue: 0.036, saturation: 0.856, brightness: 0.844)
    @State private var mythFacts1 = ""
    @State private var mythFacts2 = ""
    @State private var mythFacts3 = ""
    var body: some View {
        ZStack{
            backgroundColor.ignoresSafeArea()
            VStack(spacing: 15.0) {
                Text("Myths & Facts")
                    .font(.largeTitle)
                Text("Click on each myth to learn the truth about them.")
                Button("Myth: Homelessness is caused because people don't want to work, not because of housing.") {
                    mythFacts1 = "Fact: Homelessness is largely caused by the lack of affordable housing. Around 30 percent of homeless families in New York City are employed but can’t afford an apartment."
                }
                .tint(colorRed)
                Text(mythFacts1)
                Button("Myth: All homeless people have mental illnessness and use substances.") {
                    mythFacts2 = "Fact: Homelessness is an unstable and traumatizing part of someone's life, and these challenges make it harder for people to keep themselves healthy. It is more common for single homeless adults to develop mental disorders or use substances than it is for adults who live with homeless families."
                }
                .tint(colorRed)
                Text(mythFacts2)
                Button("Myth: People living on the streets should just go to a shelter.") {
                    mythFacts3 = "Fact: Shelters have many rules, which can be confusing for people who have lived on the streets. Shelters are designed to fit about 100 beds in one room, and these conditions are not suited enough for people who have  PTSD or mood disorders."
                }
                .tint(colorRed)
                Text(mythFacts3)
            }
            .padding()
        }
    }
}

struct MythView_Previews: PreviewProvider {
    static var previews: some View {
        MythView()
    }
}
