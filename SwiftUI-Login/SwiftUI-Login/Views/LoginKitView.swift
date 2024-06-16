//
//  LoginKitView.swift
//  SwiftUI-Login
//
//  Created by Sachin Chauhan on 15/06/24.
//


// Tutorial from https://www.youtube.com/watch?v=g4FeOJfAS-4
import SwiftUI

struct LoginKitView: View {
    @Binding var showSignup: Bool
    /// View Properies
    @State var emailID: String = ""
    @State var password: String = ""
    @State var showForgetPassword: Bool = false
    @State var showResetView: Bool = false
    @State var showOTPView: Bool = false
    
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
                CustomTextField(sfIcon: "at", iconTint: .gray, hint: "Email ID", value: $emailID)
               
                CustomTextField(sfIcon: "key", iconTint: .gray, hint: "Password", isPassword: true, value: $password)
                    .padding(.top, 5)
                
                
                Button(action: {
                    showForgetPassword.toggle()
                }, label: {
                    Text("Forget Password")
                        .font(.callout)
                        .fontWeight(.bold)
                        .foregroundStyle(.yellow)
                        .hSpacing(.trailing)
                })
                
                // Login Button
                GradientButtonView(title: "Login", icon: "arrow.right") {
                    showOTPView.toggle()
                }
                .hSpacing(.trailing)
                .disableWithOpacity(emailID.isEmpty || password.isEmpty)
                
            })
            .padding(.top, 20)
            Spacer(minLength: 0)
            HStack( spacing: 10, content: {
                Text("Don't have an account?")
                    .foregroundStyle(.gray)
                Button("Sign Up") {
                    showSignup.toggle()
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
        /// Asking Email ID for sending Reset Link
        .sheet(isPresented: $showForgetPassword, content: {
            if #available(iOS 16.4 , *) {
                ForgetPasswordView(showResetView: $showResetView)
                    .presentationDetents([.height(300)])
                    .presentationCornerRadius(30)
            }else {
                ForgetPasswordView(showResetView: $showResetView)
                    .presentationDetents([.height(300)])
            }
        })
        
        /// Reset Password
        .sheet(isPresented: $showResetView, content: {
            if #available(iOS 16.4 , *) {
                ResetPasswordView()
                    .presentationDetents([.height(350)])
                    .presentationCornerRadius(30)
            }else {
                ResetPasswordView()
                    .presentationDetents([.height(350)])
            }
        })
        
        /// Show OTP
        .sheet(isPresented: $showOTPView, content: {
            if #available(iOS 16.4 , *) {
                OTPView()
                    .presentationDetents([.height(350)])
                    .presentationCornerRadius(30)
            }else {
                OTPView()
                    .presentationDetents([.height(350)])
            }
        })
    }
}

#Preview {
    LoginKitView(showSignup: .constant(true))
}
