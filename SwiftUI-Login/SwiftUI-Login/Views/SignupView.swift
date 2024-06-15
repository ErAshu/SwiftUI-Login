//
//  SignupView.swift
//  SwiftUI-Login
//
//  Created by Sachin Chauhan on 16/06/24.
//

import SwiftUI

struct SignupView: View {
    @Binding var showSignup: Bool
    /// View Properies
    @State var emailID: String = ""
    @State var fullName: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10, content: {
            Button(action: {
                showSignup = false
            }, label: {
                Image(systemName: "arrow.left")
                    .font(.title2)
                    .foregroundStyle(.gray)
            })
            .padding(.top, 10)
            Spacer(minLength: 0)
            Text("SignUp")
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Text("Please signup to continue")
                .font(.callout)
                .fontWeight(.semibold)
                .foregroundStyle(.gray)
                .padding(.top, -5)
            
            VStack(spacing: 25, content: {
                CustomTextField(sfIcon: "at", iconTint: .gray, hint: "Email ID", value: $emailID)
                
                CustomTextField(sfIcon: "person", iconTint: .gray, hint: "Full Name", value: $fullName)
                    .padding(.top, 5)
                
                CustomTextField(sfIcon: "key", iconTint: .gray, hint: "Password", isPassword: true, value: $password)
                    .padding(.top, 5)
                
         
                // SignUp Button
                GradientButtonView(title: "Continue", icon: "arrow.right") {
                    
                }
                .hSpacing(.trailing)
                .disableWithOpacity(emailID.isEmpty || fullName.isEmpty || password.isEmpty)
                
            })
            .padding(.top, 20)
            Spacer(minLength: 0)
            HStack( spacing: 10, content: {
                Text("Already have an account?")
                    .foregroundStyle(.gray)
                Button("Login") {
                    showSignup = false
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
 //   SignupView(showSignup: .constant(true))
    NewLoginView()
}
