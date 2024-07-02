//
//  SignInView.swift
//  Chat
//
//  Created by Vlad Ispas on 02.07.2024.
//

import SwiftUI

struct SignInView: View {
    
    @State private var phoneNumber: String = ""
    
    @Binding var isSignIn: Bool
    @Binding var isSignedIn: Bool
    
    var body: some View {
        GeometryReader { proxy in
            VStack {
                top
                
                Spacer()
                
                buttons
            }
            .navigationTitle("Sign in")
            .padding(.horizontal, 16)
        }
        .ignoresSafeArea(.keyboard)
    }
    
    var top: some View {
        VStack(spacing: 32) {
            HStack(spacing: 4) {
                Text("Don't have an account yet?")
                    .font(.callout)
                
                Button {
                    isSignIn = false
                } label: {
                    Text("Sign up")
                        .font(.callout)
                        .fontWeight(.semibold)
                        .foregroundStyle(.blue)
                }
                
                Spacer()
            }
            
            TextField(text: $phoneNumber) {
                Text("Enter your phone number")
            }
            .keyboardType(.numberPad)
            .padding()
            .background {
                RoundedRectangle(cornerRadius: 12)
                    .fill(
                        Color(.secondarySystemBackground)
                    )
            }
        }
    }
    
    var buttons: some View {
        VStack(spacing: 16) {
            NavigationLink {
                PhoneNumberVerificationView(isSignedIn: $isSignedIn)
            } label: {
                Text("Sign in")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background {
                        RoundedRectangle(cornerRadius: 12)
                            .fill(
                                Color(.secondarySystemBackground)
                            )
                    }
            }
            
            Text("or")
            
            VStack(spacing: 8) {
                Button {
                    // TODO: Sign in with Apple
                    isSignedIn = true
                } label: {
                    Text("Sign in with Apple")
                        .foregroundStyle(Color(.systemBackground))
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background {
                            RoundedRectangle(cornerRadius: 12)
                                .fill(.accent)
                        }
                }
                
                Button {
                    // TODO: Sign in with Google
                    isSignedIn = true
                } label: {
                    Text("Sign in with Google")
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
        }
    }
    
}

#Preview {
    NavigationStack {
        SignInView(isSignIn: .constant(true), isSignedIn: .constant(false))
    }
}
