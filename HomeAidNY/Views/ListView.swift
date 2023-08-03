//
//  ListView.swift
//  HomeAidNY
//
//  Created by Scholar on 8/3/23.
//

import SwiftUI

// some code is from https://sarunw.com/posts/swiftui-checkbox/

struct ListView: View {
    //color vars
    let backgroundColor = Color(red:0.929, green:0.867,blue:0.725)
    let accentColor = Color(red:0.169,green:0.173,blue:0.169)
    
    @State private var socksIsOn = false
    @State private var clothingIsOn = false
    @State private var shoesIsOn = false
    @State private var hygieneIsOn = false
    @State private var masksIsOn = false
    @State private var linensIsOn = false
    @State private var towelsIsOn = false
    @State private var householdIsOn = false
    @State private var winterIsOn = false
    @State private var foodIsOn = false

    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            VStack {
                Text("Most Needed Items")
                    .font(.title)
                    .fontWeight(.bold)
                
                Group {
                    //socks
                    Toggle(isOn: $socksIsOn) {
                        Text("Socks")
                    }
                    .toggleStyle(iOSCheckboxToggleStyle())
                    .foregroundColor(accentColor)
                    .padding(0.5)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("• Must be clean and un-used").frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading,25
                        ).foregroundColor(accentColor)
                    
                    //clothing
                    Toggle(isOn: $clothingIsOn) {
                        Text("Clothing")
                    }
                    .toggleStyle(iOSCheckboxToggleStyle())
                    .foregroundColor(accentColor)
                    .padding(0.5)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("• Most needed items include jeans, casual and professional clothing, underwear, bras and socks.").frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading,25
                        )
                        .padding(.bottom, 0.5)
                        .foregroundColor(accentColor)
                    
                    Text("• Clean, new/gently used, medium to XXXL sizes").frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading,25
                        )
                        .padding(.top,0.5)
                        .foregroundColor(accentColor)
                    
                    //shoes
                    Toggle(isOn: $shoesIsOn) {
                        Text("Shoes")
                    }
                    .toggleStyle(iOSCheckboxToggleStyle())
                    .foregroundColor(accentColor)
                    .padding(0.5)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    //Hygiene products and toiletries
                    Toggle(isOn: $hygieneIsOn) {
                        Text("Hygiene products and toiletries")
                    }
                    .toggleStyle(iOSCheckboxToggleStyle())
                    .foregroundColor(accentColor)
                    .padding(0.5)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("• Travel size preferred").frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading,25
                        )
                        .padding(.top,0.5)
                        .foregroundColor(accentColor)
                    
                    //Disposable/sanitary masks
                    Toggle(isOn: $masksIsOn) {
                        Text("Disposable/sanitary masks")
                    }
                    .toggleStyle(iOSCheckboxToggleStyle())
                    .foregroundColor(accentColor)
                    .padding(0.5)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    //linens
                    Toggle(isOn: $linensIsOn) {
                        Text("Linens")
                    }
                    .toggleStyle(iOSCheckboxToggleStyle())
                    .foregroundColor(accentColor)
                    .padding(0.5)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                }.padding(.leading, 50.0)

                Group {
                    //Bath towels and face cloths
                    Toggle(isOn: $towelsIsOn) {
                        Text("Bath towels and face cloths")
                    }
                    .toggleStyle(iOSCheckboxToggleStyle())
                    .foregroundColor(accentColor)
                    .padding(0.5)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("• New or gently used").frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading,25
                        )
                        .padding(.top,0.5)
                        .foregroundColor(accentColor)
                    
                    //Household items
                    Toggle(isOn: $householdIsOn) {
                        Text("Household items")
                    }
                    .toggleStyle(iOSCheckboxToggleStyle())
                    .foregroundColor(accentColor)
                    .padding(0.5)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    //Winter season
                    Toggle(isOn: $winterIsOn) {
                        Text("Winter specific clothing")
                    }
                    .toggleStyle(iOSCheckboxToggleStyle())
                    .foregroundColor(accentColor)
                    .padding(0.5)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("• Coats, jackets, hats, gloves and scarves").frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading,25
                        )
                        .padding(.top,0.5)
                        .foregroundColor(accentColor)

                    //Foods that are not home cooked/prepared at home
                    Toggle(isOn: $foodIsOn) {
                        Text("Foods that are not home cooked/prepared at home")
                            .multilineTextAlignment(.leading)
                    }
                    .toggleStyle(iOSCheckboxToggleStyle())
                    .foregroundColor(accentColor)
                    .padding(0.5)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                }.padding(.leading, 50.0)
                    .padding(.trailing,5)
                
            }
        }
        
//            VStack {
//                Text("Food")
//            }

    }
}

struct iOSCheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        // 1
        Button(action: {

            // 2
            configuration.isOn.toggle()

        }, label: {
            HStack {
                // 3
                Image(systemName: configuration.isOn ? "checkmark.square" : "square")

                configuration.label
            }
        })
    }
}
