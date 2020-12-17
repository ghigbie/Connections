//
//  ContentView.swift
//  Connections
//
//  Created by George Higbie on 12/16/20.
//

import SwiftUI

struct ContentView: View {
    let rowOne = ["chandler", "joey", "monica"]
    let rowTwo = ["phoebe", "rachel", "ross"]
    
    var body: some View {
        ZStack{
            Divider().rotationEffect(.degrees(30))
            Divider().rotationEffect(.degrees(-30))
            Divider().rotationEffect(.degrees(90))
            
            ConnectionItem(imageName: "yourname")
            
            
            HStack(spacing: 12){
                
                ConnectionItem(imageName: "monica")
                    .rotationEffect(.degrees(-30))
                Spacer()
                ConnectionItem(imageName: "ross")
                    .rotationEffect(.degrees(-30))
            }//HSTACK
            .rotationEffect(.degrees(30))//HSTACK
            
            HStack {
                ConnectionItem(imageName: "joey")
                    .rotationEffect(.degrees(-90))
                Spacer()
                ConnectionItem(imageName: "chandler")
                    .rotationEffect(.degrees(-90))
            }//HSTACK
            .rotationEffect(.degrees(90))
            
            HStack {
                ConnectionItem(imageName: "rachel")
                    .rotationEffect(.degrees(30))
                Spacer()
                ConnectionItem(imageName: "phoebe")
                    .rotationEffect(.degrees(30))
            }//HSTACK
            .rotationEffect(.degrees(-30))
            
        }//VSTACK
        .frame(width: 300, height: 300)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
