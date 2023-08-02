//
//  ListView.swift
//  HomeAidNY
//
//  Created by Scholar on 8/1/23.
//

import SwiftUI

struct ListView: View {
    let backgroundColor = Color(red:0.929, green:0.867, blue:0.725)
    
    var body: some View {
        ZStack{
            backgroundColor.ignoresSafeArea()
            HStack{
                VStack{
                    Button("☑️"){
                        
                    }
                }
                VStack{
                    Text("Clothing")
                        .font(.title3)
                    Text("\nSocks \nJackets \nBlankets \nHats \nGloves \nScarves \n")
                    Text("Toiletries")
                        .font(.title3)
                    Text("\nToothbrushes \nFeminine Products \nDeodorant \nShampoo \nConditioner \n")
                    Text("Food")
                        .font(.title3)
                    Text("\nCanned Meals \nFresh fruit/vegetables \nWater Bottles")
                }
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
