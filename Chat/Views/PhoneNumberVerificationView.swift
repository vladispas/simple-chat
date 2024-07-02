//
//  PhoneNumberVerificationView.swift
//  Chat
//
//  Created by Vlad Ispas on 02.07.2024.
//

import SwiftUI

struct PhoneNumberVerificationView: View {
    
    @State private var code: String = ""
    
    @Binding var isSignedIn: Bool
    
    var body: some View {
        GeometryReader { proxy in
            ZStack {
                Color(.systemBackground)
                    .ignoresSafeArea()
                    .onTapGesture {
                        self.hideKeyboard()
                    }
                
                VStack(alignment: .leading, spacing: 32) {
                    Text("Enter the confirmation code sent to you via Messages")
                        .font(.callout)
                    
                    TextField(text: $code) {
                        Text("Enter the confirmation code")
                    }
                    .keyboardType(.numberPad)
                    .padding()
                    .background {
                        RoundedRectangle(cornerRadius: 12)
                            .fill(
                                Color(.secondarySystemBackground)
                            )
                    }
                    
                    Spacer()
                    
                    Button {
                        // TODO: Verify
                        isSignedIn = true
                    } label: {
                        Text("Verify")
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
                .navigationTitle("Verify it's you")
                .padding(.horizontal, 16)
            }
        }
        .ignoresSafeArea(.keyboard)
    }
    
}

#Preview {
    NavigationStack {
        PhoneNumberVerificationView(isSignedIn: .constant(false))
    }
}
