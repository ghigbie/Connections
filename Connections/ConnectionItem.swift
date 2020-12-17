//
//  ConnectionItem.swift
//  Connections
//
//  Created by George Higbie on 12/16/20.
//

import SwiftUI

struct ConnectionItem: View {
    let imageName: String
    
    var body: some View{
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            .frame(width: 80, height: 80)
            .clipShape(Circle())
    }
}
