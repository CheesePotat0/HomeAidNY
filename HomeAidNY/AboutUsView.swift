//
//  AboutUsView.swift
//  HomeAidNY
//
//  Created by Scholar on 8/1/23.
//

import SwiftUI

struct AboutUsView: View {
    let backgroundColor = Color(red:0.929, green:0.867, blue:0.725)
    var body: some View {
        ZStack{
            backgroundColor.ignoresSafeArea()
            VStack(alignment: .center, spacing: 18.0){
                Group{
                    Text("Our Goal")
                        .font(.title)
                    Text("Our app aims to: \n- Provide users with a list of what they can donate \n- Provide nearby locations where people can donate \n- Provide factual information and debunk common myths.")
                }
                Group{
                    Text("The Developers")
                        .font(.title)
                    //Image("")
                    Text("Ambur")
                        .font(.title3)
                    Text("Hey there! I'm Ambur, and I live in New Jersey. I love to go camping and volunteer within my town.")
                        .multilineTextAlignment(.center)
                    Text("Samantha")
                        .font(.title3)
                    Text("Hi! I'm Samantha, a native New Yorker. I love cookies and cream ice cream, goldfish (the snack that smiles back), and bad dad jokes.")
                        .multilineTextAlignment(.center)
                    Text("Nicole")
                        .font(.title3)
                    Text("Hey! I'm Nicole and I live on Long Island. I love to eat, dance, and hang out with friends.")
                        .multilineTextAlignment(.center)
                    Text("Maya")
                        .font(.title3)
                    Text("Hi, I'm Maya! I love to skateboard, eat food, and I have two cats!")
                        .multilineTextAlignment(.center)
                }
            }
            .padding()
        }
    }
}

struct AboutUsView_Previews: PreviewProvider {
    static var previews: some View {
        AboutUsView()
    }
}
