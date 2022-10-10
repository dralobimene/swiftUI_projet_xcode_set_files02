//
//  test28.swift
//  projet_Test01
//
//  Created by apprenant70 on 17/09/2022.
//

// un bouton qu'il faut slider pr acceder a la seconde vue?
// le fonctionnement n'est pas tres clair
import SwiftUI

struct test28: View {
    
    //
    @State
    var showView = false
    
    var body: some View {
        
        NavigationView {
            VStack {
                Button(action: {
                    // print("*** Login in progress... ***")
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        self.showView = true
                    }
                }) {
                    Text("Push me and go on")
                } // fin de Text

                //MARK: - NAVIGATION LINKS
                NavigationLink(destination: PushedView(), isActive: $showView) {
                    EmptyView()
                } // fin de NavigationLink
                
            } // fin de VStack
        } // fin de NavigationView
    } // fin de some View
} // fin de View

struct PushedView: View {
    var body: some View {
        Text("This is your pushed view...")
            .font(.largeTitle)
            .fontWeight(.heavy)
    }
}

struct test28_Previews: PreviewProvider {
    static var previews: some View {
        test28()
    }
}
