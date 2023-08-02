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
            VStack(alignment: .center, spacing: 20.0){
                Text("The Developers")
                    .font(.largeTitle)
                //Image("")
                Text("Ambur")
                    .font(.title3)
                Text("Hey there! I'm Ambur. I love to go camping and volunteer within my town.")
                    .multilineTextAlignment(.center)
                Text("Samantha")
                    .font(.title3)
                Text("Hi! I'm Samantha, a native New Yorker. I love cookies and cream ice cream, goldfish (the snack that smiles back), and bad dad jokes.")
                    .multilineTextAlignment(.center)
                Text("Nicole")
                    .font(.title3)
                Text("Nicole is very cool :D")
                    .multilineTextAlignment(.center)
                Text("Maya")
                    .font(.title3)
                Text("Maya is very cool :D")
                    .multilineTextAlignment(.center)
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
