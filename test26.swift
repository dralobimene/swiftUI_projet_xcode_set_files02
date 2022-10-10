//
//  test26.swift
//  projet_Test01
//
//  Created by apprenant70 on 17/09/2022.
//

// 1 formulaire de login qui amene sur 1 seconde View

import SwiftUI

struct test26: View {
    
    //
    @State
    private var signInSuccess = false
    
    var body: some View {
        
        return Group {
            if signInSuccess {
                AppHome()
            }
            else {
                LoginFormView(signInSuccess: $signInSuccess)
            }
        }
        
    }
}

struct LoginFormView : View {
    
    // texte par defaut ds les TextFields
    @State
    private var userName: String = "Laurent"
    
    @State
    private var password: String = ""
    
    @State
    private var showError = false
    
    @Binding
    var signInSuccess: Bool
    
    var body: some View {
        
        // VStack 01
        VStack {
            // HStack 03
            HStack {
                Text("Sachant que votre User name est votre mot de pase:")
                    // .font(.callout)
                    // .bold()
                
                Spacer()
            }.padding()
            // fin de HStack 03
            
            // HStack 01
            HStack {
                Text("User name")
                TextField("type here", text: $userName)
            }.padding()
            // fin de HStack 01
            
            // HStack 02
            HStack {
                Text(" Password")
                TextField("type here", text: $password)
                    .textContentType(.password)
            }.padding()
            // fin de HStack 02
            
            // btn 01
            Button(action: {
                // Your auth logic
                if(self.userName == self.password) {
                    self.signInSuccess = true
                }
                else {
                    self.showError = true
                }
                
            }) {
                Text("Sign in")
            }
            // fin de btn 01
            
            if showError {
                Text("Incorrect username/password").foregroundColor(Color.red)
            }
        } // fin de VStack 01
    
    } // fin de some View
    
} // fin de View

struct AppHome: View {
    
    var body: some View {
        VStack {
            Text("Hello freaky world!")
            Text("You are signed in.")
        }
    }
}

struct test26_Previews: PreviewProvider {
    static var previews: some View {
        test26()
    }
}
