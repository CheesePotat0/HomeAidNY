//
//  Q4.swift
//  HomeAidNY
//
//  Created by Scholar on 8/2/23.
//

import SwiftUI

struct Q4: View {
    let backgroundColor = Color(red:0.929, green:0.867,blue:0.725)
    @State private var textTitle = "..."
    var body: some View {
        NavigationStack {
            ZStack {
                backgroundColor.ignoresSafeArea()
                VStack {
                    Spacer()
                    Text("What races make up the majority of the shelter populations?")
                        .font(.title)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    Button("Black and Latino") {
                        textTitle = "✅Correct! Approximately 56 percent of heads of household in shelters are Black, 32 percent are Hispanic/Latinx, 7 percent are White, less than 1 percent are Asian-American or Native American, and 4 percent are of unknown race/ethnicity."
                    }
                    .buttonStyle(.bordered)
                    Button("White and Asian") {
                        textTitle = "❌Incorrect, approximately 56 percent of heads of household in shelters are Black, 32 percent are Hispanic/Latinx, 7 percent are White, less than 1 percent are Asian-American or Native American, and 4 percent are of unknown race/ethnicity."
                    }
                    .buttonStyle(.bordered)
                    Button("Asian and Latino") {
                        textTitle = "❌Incorrect, approximately 56 percent of heads of household in shelters are Black, 32 percent are Hispanic/Latinx, 7 percent are White, less than 1 percent are Asian-American or Native American, and 4 percent are of unknown race/ethnicity."
                    }
                    .buttonStyle(.bordered)
                    Button("Native American and Black") {
                        textTitle = "❌Incorrect, approximately 56 percent of heads of household in shelters are Black, 32 percent are Hispanic/Latinx, 7 percent are White, less than 1 percent are Asian-American or Native American, and 4 percent are of unknown race/ethnicity."
                    }
                    .buttonStyle(.bordered)
                    Text(textTitle)
                        .font(.body)
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                        .padding(2.0)

                    NavigationLink(destination: Q5()) {
                        Text("Next question")
                    }
                        .padding()
                    
                    Image("q4pic")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                    
                }
            }
        }
    }
}

struct Q4_Previews: PreviewProvider {
    static var previews: some View {
        Q4()
    }
}
