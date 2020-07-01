//
//  LoginView.swift
//  Social
//
//  Created by Christian Ampe on 6/30/20.
//

import SwiftUI

struct LoginView: View {
    
    // MARK: - Properties
    
    @ObservedObject var model: LoginViewModel
    
    // MARK: - View
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
    
}

// MARK: - PreviewProvider

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(model: .init())
    }
}
