//
//  test27.swift
//  projet_Test01
//
//  Created by apprenant70 on 17/09/2022.
//

// 1 bouton qui amene sur 1 seconde View

import SwiftUI

struct test27: View {
    
    //
    @State
    var clicked: Bool = false
    
    var body: some View {
        
        return Group {
            if clicked {
                Home()
            }
            else {
                VStack {
                    Text("welcomeView")
                    
                    Button(action: {
                        // Text("Bjour")
                        clicked = true
                        // Home()
                    }, label: {
                        Image(systemName: "clock")
                        Text("Click Me")
                    })
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(5)
                } // fin de VStack
            }
        } // fin de return Group
        
    }
    
}

struct Home: View {
    var body: some View {
        VStack {
            Text("Hello freaky world!")
            Text("You are signed in.")
            
            
        }
    }
}

struct test27_Previews: PreviewProvider {
    static var previews: some View {
        test27()
    }
}
