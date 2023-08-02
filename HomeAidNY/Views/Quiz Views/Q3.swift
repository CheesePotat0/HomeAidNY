//
//  Q3.swift
//  HomeAidNY
//
//  Created by Scholar on 8/2/23.
//

import SwiftUI

struct Q3: View {
    let backgroundColor = Color(red:0.929, green:0.867,blue:0.725)
    @State private var textTitle = "..."
    var body: some View {
        NavigationStack {
            ZStack {
                backgroundColor.ignoresSafeArea()
                VStack {
                    Spacer()
                    Text("How much higher is the number of homeless single adults than it was 10 years ago?")
                        .font(.title)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                        .padding(3.0)
                    
                    Button("33%") {
                        textTitle = "❌Incorrect, it is 132% higher. Compared to homeless families, homeless single adults have higher rates of serious mental illness, addiction disorders, and other severe health problems."
                    }
                    .buttonStyle(.bordered)
                    Button("24%") {
                        textTitle = "❌Incorrect, it is 132% higher. Compared to homeless families, homeless single adults have higher rates of serious mental illness, addiction disorders, and other severe health problems."
                    }
                    .buttonStyle(.bordered)
                    Button("132%") {
                        textTitle = "✅Correct! Compared to homeless families, homeless single adults have higher rates of serious mental illness, addiction disorders, and other severe health problems."
                    }
                    .buttonStyle(.bordered)
                    Button("89%") {
                        textTitle = "❌Incorrect, it is 132% higher. Compared to homeless families, homeless single adults have higher rates of serious mental illness, addiction disorders, and other severe health problems."
                    }
                    .buttonStyle(.bordered)
                    Text(textTitle)
                        .font(.title3)
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                        .padding(2.0)

                    NavigationLink(destination: Q4()) {
                        Text("Next question")
                    }
                        .padding()
                    
                    Image("q3pic")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                }
            }
        }
    }
}

struct Q3_Previews: PreviewProvider {
    static var previews: some View {
        Q3()
    }
}
