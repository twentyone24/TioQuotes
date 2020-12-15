//
//  ViewUI.swift
//  tio beta
//
//  Created by NAVEEN MADHAN on 1/19/20.
//  Copyright © 2020 Navemics. All rights reserved.
//

import SwiftUI

struct textTIO: View {
    var body: some View {
       
        HStack {
            
            ZStack {
                Text("T I O")
                    .font(.largeTitle)
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color("bgG1"))
                    .offset(x: 3, y: 3)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                Text("T I O")
                    .font(.largeTitle)
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color("bgG1"))
                    .offset(x: -3, y: -3)
                Text("T I O")
                    .font(.largeTitle)
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color("bgG1"))
            }
        }
    }
}

struct textTIO_Previews: PreviewProvider {
    static var previews: some View {
        textTIO()
    }
}
