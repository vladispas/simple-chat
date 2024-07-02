//
//  ViewExtension.swift
//  Chat
//
//  Created by Vlad Ispas on 02.07.2024.
//

import SwiftUI

extension View {
    
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
