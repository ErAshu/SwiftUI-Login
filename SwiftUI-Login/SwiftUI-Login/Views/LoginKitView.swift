//
//  LoginKitView.swift
//  SwiftUI-Login
//
//  Created by Sachin Chauhan on 15/06/24.
//


// Tutorial from https://www.youtube.com/watch?v=g4FeOJfAS-4
import SwiftUI

struct LoginKitView: View {
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10, content: {
           Spacer(minLength: 0)
            Text("Login")
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Text("Please signin to continue")
                .font(.callout)
                .fontWeight(.semibold)
                .foregroundStyle(.gray)
                .padding(.top, -5)
            
            VStack(spacing: 25, content: {
                CustomTextField(sfIcon: "at", iconTint: .gray, hint: "Email ID", value: $email)
               
                CustomTextField(sfIcon: "key", iconTint: .gray, hint: "Password", isPassword: true, value: $password)
                    .padding(.top, 5)
                
                
                Button(action: {
                    
                }, label: {
                    Text("Forget Password")
                        .font(.callout)
                        .fontWeight(.bold)
                        .foregroundStyle(.yellow)
                        .hSpacing(.trailing)
                })
                
                // Login Button
                GradientButtonView(title: "Login", icon: "arrow.right") {
                    
                }
                .hSpacing(.trailing)
                .disableWithOpacity(email.isEmpty || password.isEmpty)
                
            })
            .padding(.top, 20)
            Spacer(minLength: 0)
            HStack( spacing: 10, content: {
                Text("Don't have an account?")
                    .foregroundStyle(.gray)
                Button("Sign Up") {
                    
                }
                .fontWeight(.bold)
                .tint(.yellow)
            })
            .font(.callout)
            .hSpacing()
        })
        
        .padding(.vertical, 15)
        .padding(.horizontal, 25)
        .toolbar(.hidden, for: .navigationBar)
    }
}

#Preview {
    LoginKitView()
}
