//
//  OTPView.swift
//  SwiftUI-Login
//
//  Created by Sachin Chauhan on 16/06/24.
//

import SwiftUI

struct OTPView: View {
   // @Binding var otpText: String

    /// Environment Properties
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            Text("Enter OTP")
                .font(.title2)
                .fontWeight(.black)
            Text("Please enter OTP sent to your Phone or Email")
                .font(.callout)
                .fontWeight(.regular)
                .foregroundStyle(.gray)
            
            GradientButtonView(title: "Verify", icon: "arrow.right") {
                
            }
            .hSpacing(.trailing)
        }
        
        .interactiveDismissDisabled()
    }
}

#Preview {
    OTPView()
    //   NewLoginView()
}
