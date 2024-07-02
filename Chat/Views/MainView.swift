//
//  MainView.swift
//  Chat
//
//  Created by Vlad Ispas on 02.07.2024.
//

import SwiftUI

struct MainView: View {
    
    @Binding var isSignedIn: Bool
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Button {
                    isSignedIn = false
                } label: {
                    Text("Sign out")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background {
                            RoundedRectangle(cornerRadius: 12)
                                .fill(
                                    Color(.secondarySystemBackground)
                                )
                        }
                }
            }
            .padding(.horizontal, 16)
        }
    }
    
}

#Preview {
    MainView(isSignedIn: .constant(false))
}
