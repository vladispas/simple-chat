//
//  AuthView.swift
//  Chat
//
//  Created by Vlad Ispas on 02.07.2024.
//

import SwiftUI

struct AuthView: View {
    
    @State private var isSignIn: Bool = false
    
    @Binding var isSignedIn: Bool
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemBackground)
                    .ignoresSafeArea()
                    .onTapGesture {
                        self.hideKeyboard()
                    }
                
                if isSignIn {
                    SignInView(isSignIn: $isSignIn, isSignedIn: $isSignedIn)
                } else {
                    SignUpView(isSignIn: $isSignIn, isSignedIn: $isSignedIn)
                }
            }
        }
    }
    
}

#Preview {
    AuthView(isSignedIn: .constant(false))
}
