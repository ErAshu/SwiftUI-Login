//
//  ForgetPasswordView.swift
//  SwiftUI-Login
//
//  Created by Sachin Chauhan on 16/06/24.
//

import SwiftUI

struct ForgetPasswordView: View {
    @Binding var showResetView: Bool
    /// View Properies
    @State var emailID: String = ""

    /// Environment Properties
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10, content: {
            Button(action: {
                dismiss()
            }, label: {
                Image(systemName: "arrow.left")
                    .font(.title2)
                    .foregroundStyle(.gray)
            })
            .padding(.top, 10)
           
            Text("Forget Password")
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Text("Please enter your Email ID so that we can send the reset link.")
                .font(.callout)
                .fontWeight(.semibold)
                .foregroundStyle(.gray)
                .padding(.top, -5)
            
            VStack(spacing: 25, content: {
                CustomTextField(sfIcon: "at", iconTint: .gray, hint: "Email ID", value: $emailID)
                
         
                // Send Link Button
                GradientButtonView(title: "Send Link", icon: "arrow.right") {
                    Task {
                        dismiss()
                        try? await Task.sleep(for: .seconds(0))
                        showResetView = true
                    }
                    
                }
                .hSpacing(.trailing)
                .disableWithOpacity(emailID.isEmpty)
                
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
    ForgetPasswordView(showResetView: .constant(true))
    //NewLoginView()
}
