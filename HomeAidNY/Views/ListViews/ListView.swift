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
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
