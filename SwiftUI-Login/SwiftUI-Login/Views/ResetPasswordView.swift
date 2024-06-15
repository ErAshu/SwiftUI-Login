//
//  ResetPasswordView.swift
//  SwiftUI-Login
//
//  Created by Sachin Chauhan on 16/06/24.
//

import SwiftUI

struct ResetPasswordView: View {
   
    /// View Properies
    @State var password: String = ""
    @State var confirmPassword: String = ""

    /// Environment Properties
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10, content: {
            Button(action: {
                dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .font(.title2)
                    .foregroundStyle(.gray)
            })
            .padding(.top, 10)
           
            Text("Reset Password")
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            VStack(spacing: 25, content: {
                CustomTextField(sfIcon: "lock", iconTint: .gray, hint: "Password", isPassword:  true, value: $password)
                
                CustomTextField(sfIcon: "lock", iconTint: .gray, hint: "Confirm Password", isPassword: true, value: $confirmPassword)
                    .padding(.top, 5)
                
                
                // Send Link Button
                GradientButtonView(title: "Confirm", icon: "arrow.right") {
                   
                    
                }
                .hSpacing(.trailing)
                .disableWithOpacity(password.isEmpty || confirmPassword.isEmpty)
                
            })
            .padding(.top, 20)
         
        })
        
        .padding(.vertical, 15)
        .padding(.horizontal, 25)
        //since this is going to be a sheet
        .interactiveDismissDisabled()
    }
}

#Preview {
    ResetPasswordView()
}
