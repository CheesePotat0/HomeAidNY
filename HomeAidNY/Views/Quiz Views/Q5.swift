//
//  Q5.swift
//  HomeAidNY
//
//  Created by Scholar on 8/2/23.
//

import SwiftUI

struct Q5: View {
    @State private var textTitle = "..."
    let backgroundColor = Color(red:0.929, green:0.867,blue:0.725)
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
 
            VStack {
                Spacer()
                Text("What is the average length of stay in the shelter system for adult families?")
                    .font(.title)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Button("855 days") {
                    
                    textTitle = "✅Correct! In City Fiscal Year 2022, the average length of stay in the DHS shelter system was 509 days for single adults, 534 days for families with children, and 855 days for adult families."
                    
                }
                
                .buttonStyle(.bordered)
                
                Button("27 days") {
                    textTitle = "❌Incorrect, in City Fiscal Year 2022, the average length of stay in the DHS shelter system was 509 days for single adults, 534 days for families with children, and 855 days for adult families."
                }
                .buttonStyle(.bordered)
                Button("193 days") {
                    textTitle = "❌Incorrect, in City Fiscal Year 2022, the average length of stay in the DHS shelter system was 509 days for single adults, 534 days for families with children, and 855 days for adult families."
                }
                .buttonStyle(.bordered)
                Button("433 days") {
                    textTitle = "❌Incorrect, in City Fiscal Year 2022, the average length of stay in the DHS shelter system was 509 days for single adults, 534 days for families with children, and 855 days for adult families."
                }
                .buttonStyle(.bordered)
                
                Text(textTitle)
                    .font(.title3)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                    .padding(2.0)
                
                NavigationLink(destination: InfoView()) {
                    Text("Finished!")
                }
                    .padding()
                
                Image("q5pic")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
            }
        }
    }
}

struct Q5_Previews: PreviewProvider {
    static var previews: some View {
        Q5()
    }
}
