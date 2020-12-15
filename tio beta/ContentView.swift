//
//  ContentView.swift
//  tio beta
//
//  Created by NAVEEN MADHAN on 1/13/20.
//  Copyright © 2020 Navemics. All rights reserved.
//

import SwiftUI
import UIKit

struct ContentView: View {
    
    var quotes: [Quote] = [ Quote(quote: "They can do all because they think they can.", name: "Virgil"),
        Quote(quote: "Obstacles are those things you see when you take your eyes off the goal.", name: "Hannah More"),
        Quote(quote: "it takes", name: "N"),
        Quote(quote: " takes", name: "N") ]
    
    var body: some View {
        VStack {
            //            Image("img01")
            //                .padding(.top, 150)
            //                .frame(width: 250, height: 250)
            //                .cornerRadius(20)
            //                .shadow(radius: 90)
            //                .blur(radius: 0.5)
            MainView(quotes: quotes)
        }
        .background(Rectangle()
        .fill(LinearGradient(gradient: Gradient(colors: [Color("bgG1"), Color.blue]), startPoint: .topLeading, endPoint: .trailing)
        )
        ).edgesIgnoringSafeArea(.all)
        
    }
}



struct MainView: View {
    var quotes: [Quote]
//    let quotes = ["Quotes 1", "Quotes 2", "Quotes 3","Quotes 1", "Quotes 2", "Quotes 3","Quotes 1", "Quotes 2", "Quotes 3"]
    
    var body: some View {
        VStack {
            Spacer()
            textTIO()
            Spacer()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack( spacing: 0)  {
                    ForEach(quotes,id: \.name) { quote in
                            VStack {
                                Image("img01")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                    .cornerRadius(8)
                                    .shadow(radius: 9)
                                Text(quote.quote)
                                    .font(.headline)
                                    .fontWeight(.regular)
                                    .foregroundColor(Color("bgG1"))
                                    .multilineTextAlignment(.center)
                                Divider()
                                Text(quote.name)
                                    .italic()
                                    .font(.custom("Helvetica Neue", size: 16))
                                
                            }
                            .frame(width: 300, height: 300)
                            .background(Rectangle()
                            .fill(LinearGradient(gradient: Gradient(colors: [Color("bgG1"), Color.blue]), startPoint: .topLeading, endPoint: .trailing) ))
                            .foregroundColor(Color("bgG1"))
                                .cornerRadius(15)
                                .shadow(radius: 3)
                                .padding(4)
                        .animation(.spring())
                        
                        
                        
                    }
                }
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}






