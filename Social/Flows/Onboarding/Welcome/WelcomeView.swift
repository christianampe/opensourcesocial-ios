//
//  WelcomeView.swift
//  Social
//
//  Created by Christian Ampe on 6/30/20.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Button("Log In") {
                    
                }
                Button("Sign Up") {
                    
                }
            }
            .navigationTitle("Welcome")
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
