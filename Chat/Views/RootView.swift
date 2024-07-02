//
//  RootView.swift
//  Chat
//
//  Created by Vlad Ispas on 01.07.2024.
//

import SwiftUI

struct RootView: View {
    
    @State private var isSignedIn: Bool = false
    
    var body: some View {
        if isSignedIn{
            MainView(isSignedIn: $isSignedIn)
        } else {
            AuthView(isSignedIn: $isSignedIn)
        }
    }
    
}

#Preview {
    RootView()
}
