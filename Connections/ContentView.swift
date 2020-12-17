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
        VStack(spacing: 12){
            HStack(spacing: 12){
                ForEach(0 ..< rowOne.count){ item in
                    ConnectionItem(imageName: rowOne[item])
                }
            }//HSTACK
            .rotationEffect(.degrees(30))//HSTACK
            
            ConnectionItem(imageName: "yourname")
            
            HStack(spacing: 12){
                ForEach(0 ..< rowTwo.count){ item in
                    ConnectionItem(imageName: rowTwo[item])
                }
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
