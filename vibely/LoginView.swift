//
//  LoginView.swift
//  vibely
//
//  Created by Ana Paola Oviedo on 7/21/25.
//

import SwiftUI

extension Color {
    static let vibelyPink = Color(red: 1.0, green: 0.8, blue: 0.9)
    static let vibelyPurple = Color(red: 0.85, green: 0.8, blue: 1.0)
    static let vibelyBlue = Color(red: 0.75, green: 0.9, blue: 1.0)
}

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isSignup = false
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.vibelyPink, .vibelyPurple, .vibelyBlue],
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .ignoresSafeArea()
                .blur(radius: 20)
            
            VStack(spacing: 24) {
                Text(isSignup ? "Create an Account" : "Welcome to Vibely!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .shadow(radius: 2)

                TextField("Email", text: $email)
                    .textFieldStyle(.roundedBorder)
                    .autocapitalization(.none)
                    .padding(.horizontal)

                SecureField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal)

                Button(action: {
                    // Simulate login/signup (no backend)
                }) {
                    Text(isSignup ? "Sign Up" : "Log In")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.white.opacity(0.3))
                        .cornerRadius(16)
                        .padding(.horizontal)
                        .shadow(radius: 4)
                }

                Button(action: {
                    isSignup.toggle()
                }) {
                    Text(isSignup ? "Already have an account? Log in." : "Don’t have an account? Sign up.")
                        .font(.footnote)
                        .foregroundColor(.white.opacity(0.9))
                }
            }
            .padding()
        }
    }
}
